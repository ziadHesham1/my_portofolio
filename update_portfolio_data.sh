#!/bin/bash

# ─────────────────────────────────────────
# CONFIG — change these values only
# ─────────────────────────────────────────
DATABASE_URL="https://ziad-dev-e015d-default-rtdb.firebaseio.com"
SERVICE_ACCOUNT_KEY="./serviceAccountKey.json"
DART_FILE="lib/common/portfolio_data.dart"
# ─────────────────────────────────────────

JSON_FILE="portfolio_data.json"
UPLOAD_SCRIPT="__upload.js"
CONVERT_SCRIPT="__convert.dart"

echo "🚀 Starting portfolio data update..."

# 1. Check files exist
if [ ! -f "$DART_FILE" ]; then
  echo "❌ $DART_FILE not found."
  exit 1
fi

if [ ! -f "$SERVICE_ACCOUNT_KEY" ]; then
  echo "❌ serviceAccountKey.json not found."
  echo "   → Go to Firebase Console > Project Settings > Service Accounts > Generate new private key"
  exit 1
fi

# 2. Check dart is installed
if ! command -v dart &> /dev/null; then
  echo "❌ Dart is not installed or not in PATH."
  exit 1
fi

# 3. Check node is installed
if ! command -v node &> /dev/null; then
  echo "❌ Node.js is not installed. Install it from https://nodejs.org"
  exit 1
fi

# 4. Write a Dart converter script that imports portfolio_data.dart and dumps it as JSON
cat > $CONVERT_SCRIPT << 'EOF'
import 'dart:convert';
import 'dart:io';

// ── inline the data map here ──
part 'DART_FILE_PLACEHOLDER';

void main() {
  final encoder = JsonEncoder.withIndent('  ');
  print(encoder.convert(data));
}
EOF

# Replace placeholder with actual relative path from project root
DART_BASENAME=$(basename "$DART_FILE")

cat > $CONVERT_SCRIPT << EOF
import 'dart:convert';
import 'dart:io';
import '$DART_FILE';

void main() {
  final encoder = JsonEncoder.withIndent('  ');
  stdout.write(encoder.convert(data));
}
EOF

echo "📦 Converting portfolio_data.dart → portfolio_data.json..."
dart run $CONVERT_SCRIPT > $JSON_FILE 2>/tmp/__dart_err

if [ $? -ne 0 ]; then
  echo "❌ Dart conversion failed:"
  cat /tmp/__dart_err
  rm -f $CONVERT_SCRIPT
  exit 1
fi

echo "✅ portfolio_data.json updated from Dart source."

# 5. Check firebase-admin is installed, install if not
if [ ! -d "node_modules/firebase-admin" ]; then
  echo "📦 Installing firebase-admin..."
  npm install firebase-admin --silent
fi

# 6. Write the upload script
cat > $UPLOAD_SCRIPT << EOF
const admin = require('firebase-admin');
const serviceAccount = require('$SERVICE_ACCOUNT_KEY');
const fs = require('fs');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: '$DATABASE_URL'
});

const db = admin.database();
const data = JSON.parse(fs.readFileSync('$JSON_FILE', 'utf8'));

db.ref('/').set(data)
  .then(() => {
    console.log('✅ portfolio_data.json uploaded to Realtime Database successfully!');
    process.exit(0);
  })
  .catch((err) => {
    console.error('❌ Upload failed:', err.message);
    process.exit(1);
  });
EOF

# 7. Run the upload
node $UPLOAD_SCRIPT

# 8. Cleanup
rm -f $UPLOAD_SCRIPT $CONVERT_SCRIPT /tmp/__dart_err

echo "🏁 Done."