// ignore_for_file: non_constant_identifier_names

abstract class PortfolioAssets {
  static addImage(String name) => 'assets/images/$name';
  static addIcon(String name) => 'assets/icons/$name';
  static addGIF(String name) => 'assets/gif/$name';

  //------------------------------- icons ---------------------------------------
  static final String github_icon = addIcon('github_icon.png');
  static final String dart_icon = addIcon('icons8-dart-48.png');
  static final String flutter_icon = addIcon('icons8-flutter-48.png');
  static final String figma_icon = addIcon('icons8-figma-48.png');
  static final String firebase_icon =
      addIcon('icons8-google-firebase-console-48.png');
  static final String supabase_icon = addIcon('supabase-logo-icon.png');
  static final String vscode_icon = addIcon('vscode.png');

// empty_image
  static final String empty_image = addImage('placeholder_image.png');
}
