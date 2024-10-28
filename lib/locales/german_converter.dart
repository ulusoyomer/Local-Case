import '../enum/local_case_language_enum.dart';
import 'number_converter.dart';

class GermanConverter {
  final Map<String, String> germanLowercaseMap = {
    'Ä': 'ä',
    'Ö': 'ö',
    'Ü': 'ü',
    'ẞ': 'ß'
  };

  final Map<String, String> germanUppercaseMap = {
    'ä': 'Ä',
    'ö': 'Ö',
    'ü': 'Ü',
    'ß': 'SS'
  };

  static String germanTeens(int number) {
    switch (number) {
      case 11:
        return "elf";
      case 12:
        return "zwölf";
      case 13:
        return "dreizehn";
      case 14:
        return "vierzehn";
      case 15:
        return "fünfzehn";
      case 16:
        return "sechzehn";
      case 17:
        return "siebzehn";
      case 18:
        return "achtzehn";
      case 19:
        return "neunzehn";
      default:
        return "";
    }
  }

  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return germanLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return germanUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  static String convertNumberToWords(int number) {
    final germanUnits = [
      "",
      "eins",
      "zwei",
      "drei",
      "vier",
      "fünf",
      "sechs",
      "sieben",
      "acht",
      "neun"
    ];
    final germanTens = [
      "",
      "zehn",
      "zwanzig",
      "dreißig",
      "vierzig",
      "fünfzig",
      "sechzig",
      "siebzig",
      "achtzig",
      "neunzig"
    ];
    final germanHundreds = [
      "",
      "einhundert",
      "zweihundert",
      "dreihundert",
      "vierhundert",
      "fünfhundert",
      "sechshundert",
      "siebenhundert",
      "achthundert",
      "neunhundert"
    ];
    final germanZero = "null";
    final germanThousands = "tausend";

    return NumberConverter.convertNumberToWords(
      number: number,
      units: germanUnits,
      tens: germanTens,
      hundreds: germanHundreds,
      zero: germanZero,
      thousand: germanThousands,
      language: LocalCaseLanguage.german,
    );
  }
}
