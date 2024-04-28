// ignore_for_file: non_constant_identifier_names

abstract class PortfolioAssets {
  static addImage(String name) => 'assets/images/$name';
  static addIcon(String name) => 'assets/icons/$name';
  static addGIF(String name) => 'assets/gif/$name';
//------------------------------- icons ---------------------------------------

  static final String github_icon = addIcon('github_icon.png');
//------------------------------- images ---------------------------------------
  static final String blank_profile_image =
      addImage('blank-profile-picture.png');

  static final String empty_image = addImage('empty_image.jpg');
  static final String ziad_picture = addImage('ziad_picture.jpg');
  static final String portfolio_image = addImage('portfolio_image.png');
//------------------------------- gif ---------------------------------------
}
