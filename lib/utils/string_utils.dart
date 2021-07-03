class StringUtils {
  static String addComma(double value) {
    var string = value.toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");
    return string.replaceAllMapped(
        new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
