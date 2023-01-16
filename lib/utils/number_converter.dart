import 'package:intl/intl.dart';

mixin ConverterMixin {
  String convertDoubleToPrice(double number) {
    final converter = NumberFormat.currency(
      name: "rupiah",
      symbol: "Rp",
      decimalDigits: 0,
    );

    return converter.format(number);
  }
}
