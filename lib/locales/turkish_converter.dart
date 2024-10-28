import 'package:local_case/locales/number_converter.dart';
import '../enum/local_case_language_enum.dart';

class TurkishConverter {
  final Map<String, String> turkishLowercaseMap = {
    'I': 'ı',
    'İ': 'i',
    'Ğ': 'ğ',
    'Ü': 'ü',
    'Ş': 'ş',
    'Ö': 'ö',
    'Ç': 'ç'
  };

  final Map<String, String> turkishUppercaseMap = {
    'ı': 'I',
    'i': 'İ',
    'ğ': 'Ğ',
    'ü': 'Ü',
    'ş': 'Ş',
    'ö': 'Ö',
    'ç': 'Ç'
  };

  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return turkishLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return turkishUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  static String convertNumberToWords(int number) {
    final turkishUnits = [
      "sıfır",
      "bir",
      "iki",
      "üç",
      "dört",
      "beş",
      "altı",
      "yedi",
      "sekiz",
      "dokuz"
    ];
    final turkishTens = [
      "",
      "on",
      "yirmi",
      "otuz",
      "kırk",
      "elli",
      "altmış",
      "yetmiş",
      "seksen",
      "doksan"
    ];
    final turkishHundreds = [
      "",
      "yüz",
      "iki yüz",
      "üç yüz",
      "dört yüz",
      "beş yüz",
      "altı yüz",
      "yedi yüz",
      "sekiz yüz",
      "dokuz yüz"
    ];
    final turkishZero = "sıfır";
    final turkishThousand = "bin";

    return NumberConverter.convertNumberToWords(
        number: number,
        units: turkishUnits,
        tens: turkishTens,
        hundreds: turkishHundreds,
        zero: turkishZero,
        thousand: turkishThousand,
        language: LocalCaseLanguage.turkish);
  }
}
