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

  //------------------------------- images ---------------------------------------
  static final String blank_profile_image =
      addImage('blank-profile-picture.png');
  static final String empty_image = addImage('placeholder_image.png');
  static final String portfolio_image = addImage('portfolio_image.png');
  static final String the_flutter_image = addImage('the_flutter_image.png');

  static final List<String> eduz_images = [
    addImage('eduz_1.jpeg'),
    addImage('eduz_2.jpeg')
  ];

  static final List<String> ischooler_images = [
    addImage('ischooler_1.jpeg'),
    addImage('ischooler_2.jpeg')
  ];
  static final List<String> spaceteens_images = [
    addImage('ischooler_1.jpeg'),
    addImage('ischooler_2.jpeg')
  ];

  static final List<String> mawjood_images = [
    addImage('mawjood_1.jpeg'),
    addImage('mawjood_2.jpeg'),
    addImage('mawjood_3.jpeg')
  ];

  static final String ziad_picture = addImage('ziad_picture.jpg');

  //------------------------------- gif ---------------------------------------
  // Add GIF assets here if you have any
}
