import '../enum/local_case_language_enum.dart';
import 'number_converter.dart';

class CzechConverter {
  final Map<String, String> czechLowercaseMap = {
    'Á': 'á',
    'Č': 'č',
    'Ď': 'ď',
    'É': 'é',
    'Ě': 'ě',
    'Í': 'í',
    'Ň': 'ň',
    'Ó': 'ó',
    'Ř': 'ř',
    'Š': 'š',
    'Ť': 'ť',
    'Ú': 'ú',
    'Ů': 'ů',
    'Ý': 'ý',
    'Ž': 'ž'
  };

  final Map<String, String> czechUppercaseMap = {
    'á': 'Á',
    'č': 'Č',
    'ď': 'Ď',
    'é': 'É',
    'ě': 'Ě',
    'í': 'Í',
    'ň': 'Ň',
    'ó': 'Ó',
    'ř': 'Ř',
    'š': 'Š',
    'ť': 'Ť',
    'ú': 'Ú',
    'ů': 'Ů',
    'ý': 'Ý',
    'ž': 'Ž'
  };

  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return czechLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return czechUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  static String convertNumberToWords(int number) {
    final czechUnits = [
      "",
      "jeden",
      "dva",
      "tři",
      "čtyři",
      "pět",
      "šest",
      "sedm",
      "osm",
      "devět"
    ];
    final czechTens = [
      "",
      "deset",
      "dvacet",
      "třicet",
      "čtyřicet",
      "padesát",
      "šedesát",
      "sedmdesát",
      "osmdesát",
      "devadesát"
    ];
    final czechHundreds = [
      "",
      "sto",
      "dvě stě",
      "tři sta",
      "čtyři sta",
      "pět set",
      "šest set",
      "sedm set",
      "osm set",
      "devět set"
    ];
    final czechZero = "nula";
    final czechThousands = "tisíc";

    return NumberConverter.convertNumberToWords(
        number: number,
        units: czechUnits,
        tens: czechTens,
        hundreds: czechHundreds,
        zero: czechZero,
        thousand: czechThousands,
        language: LocalCaseLanguage.czech);
  }
}
