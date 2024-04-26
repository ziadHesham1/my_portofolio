// ignore_for_file: non_constant_identifier_names

abstract class PortfolioAssets {
  static addImage(String name) => 'assets/images/$name';
  static addIcon(String name) => 'assets/icons/$name';
  static addGIF(String name) => 'assets/gif/$name';
//------------------------------- icons ---------------------------------------

//------------------------------- images ---------------------------------------

  static final String blankProfileImage = addImage('blank-profile-picture.png');
  static final String emptyImage = addImage('empty_image.jpg');
//------------------------------- gif ---------------------------------------
}
