extension StringExtension on String? {
//  is empty or null
  bool get isEmptyOrNull => this == null || this!.isEmpty;
  //  is not empty or null
  bool get isNotEmptyOrNull => !isEmptyOrNull;
}
