import 'dart:math';

class StringUtils {
  static String addComma(double value) {
    int decimals = 2;
    int fac = pow(10, decimals);
    double d = value;
    d = (d * fac).round() / fac;
    var string = d.toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");
    return string.replaceAllMapped(new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
