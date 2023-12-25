class AppAssets{
  static String logo = 'logo'.png;
  static String error = 'error'.png;
}


extension ImageExt on String {
  String get png => 'assets/icons/$this.png';
  String get svg => 'assets/icons/$this.svg';
  String get jpeg => 'assets/icons/$this.jpeg';
  String get jpg => 'assets/icons/$this.jpg';
}