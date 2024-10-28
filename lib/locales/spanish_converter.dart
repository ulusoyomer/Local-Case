import '../enum/local_case_language_enum.dart';
import 'number_converter.dart';

class SpanishConverter {
  final Map<String, String> spanishLowercaseMap = {
    'Ñ': 'ñ',
    'Á': 'á',
    'É': 'é',
    'Í': 'í',
    'Ó': 'ó',
    'Ú': 'ú',
    'Ü': 'ü'
  };

  final Map<String, String> spanishUppercaseMap = {
    'ñ': 'Ñ',
    'á': 'Á',
    'é': 'É',
    'í': 'Í',
    'ó': 'Ó',
    'ú': 'Ú',
    'ü': 'Ü'
  };

  static String spanishTeens(int number) {
    switch (number) {
      case 11:
        return "once";
      case 12:
        return "doce";
      case 13:
        return "trece";
      case 14:
        return "catorce";
      case 15:
        return "quince";
      case 16:
        return "dieciséis";
      case 17:
        return "diecisiete";
      case 18:
        return "dieciocho";
      case 19:
        return "diecinueve";
      default:
        return "";
    }
  }

  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return spanishLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return spanishUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  static String convertNumberToWords(int number) {
    final spanishUnits = [
      "",
      "uno",
      "dos",
      "tres",
      "cuatro",
      "cinco",
      "seis",
      "siete",
      "ocho",
      "nueve"
    ];
    final spanishTens = [
      "",
      "diez",
      "veinte",
      "treinta",
      "cuarenta",
      "cincuenta",
      "sesenta",
      "setenta",
      "ochenta",
      "noventa"
    ];
    final spanishHundreds = [
      "",
      "cien",
      "doscientos",
      "trescientos",
      "cuatrocientos",
      "quinientos",
      "seiscientos",
      "setecientos",
      "ochocientos",
      "novecientos"
    ];
    final spanishZero = "cero";
    final spanishThousand = "mil";

    return NumberConverter.convertNumberToWords(
        number: number,
        units: spanishUnits,
        tens: spanishTens,
        hundreds: spanishHundreds,
        zero: spanishZero,
        thousand: spanishThousand,
        language: LocalCaseLanguage.spanish);
  }
}
