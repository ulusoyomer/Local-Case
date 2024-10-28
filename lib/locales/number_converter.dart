import 'package:local_case/enum/local_case_language_enum.dart';
import 'package:local_case/locales/german_converter.dart';
import 'package:local_case/locales/spanish_converter.dart';

import '../errors/local_case_error.dart';

class NumberConverter {
  static String convertNumberToWords({
    required int number,
    required List<String> units,
    required List<String> tens,
    required List<String> hundreds,
    required String zero,
    required String thousand,
    LocalCaseLanguage? language,
  }) {
    if (number < 0 || number >= 1000000) throw LocaleCaseError.invalidRange();
    if (number == 0) return zero;
    if (number < 10) return units[number];
    if (number < 20) {
      if (language == LocalCaseLanguage.german) {
        return GermanConverter.germanTeens(number);
      } else if (language == LocalCaseLanguage.spanish) {
        return SpanishConverter.spanishTeens(number);
      }
    }
    if (number < 100) {
      if (language == LocalCaseLanguage.french) {
        return number % 10 == 0
            ? tens[number ~/ 10]
            : "${tens[number ~/ 10]}-${units[number % 10]}";
      } else if (language == LocalCaseLanguage.german) {
        final unit = (number % 10 == 1) ? "ein" : units[number % 10];
        return "${unit}und${tens[number ~/ 10]}".trim();
      } else if (language == LocalCaseLanguage.spanish) {
        return number % 10 == 0
            ? tens[number ~/ 10]
            : "${tens[number ~/ 10]} y ${units[number % 10]}";
      }
      return number % 10 == 0
          ? tens[number ~/ 10]
          : "${tens[number ~/ 10]} ${units[number % 10]}".trim();
    }
    if (number < 1000) {
      if (language == LocalCaseLanguage.french) {
        if (number % 100 == 0) {
          return "${hundreds[number ~/ 100]}s";
        }
      }
      return number % 100 == 0
          ? hundreds[number ~/ 100]
          : "${hundreds[number ~/ 100]} ${convertNumberToWords(number: (number % 100), units: units, tens: tens, hundreds: hundreds, zero: zero, thousand: thousand, language: language)}"
              .trim();
    }

    final thousands = number ~/ 1000;
    final remainder = number % 1000;
    if (language == LocalCaseLanguage.czech &&
        thousands >= 2 &&
        thousands <= 4) {
      thousand += 'e';
    }

    String thousandsPart = (thousands == 1
        ? thousand
        : "${convertNumberToWords(number: thousands, units: units, tens: tens, hundreds: hundreds, zero: zero, thousand: thousand, language: language)} $thousand");
    String remainderPart = remainder > 0
        ? " ${convertNumberToWords(number: remainder, units: units, tens: tens, hundreds: hundreds, zero: zero, thousand: thousand, language: language)}"
        : "";

    return "$thousandsPart$remainderPart".trim();
  }

  static int convertWordsToNumber(
      {required String text,
      required Map<String, int> wordsToNumbers,
      LocalCaseLanguage? language}) {
    int result = 0;
    int current = 0;
    List<String> words = text.split(RegExp(r'[\s-]'));

    for (String word in words) {
      int? value = wordsToNumbers[word];

      if (value != null) {
        if (value == 100) {
          current = (current == 0 ? 1 : current) * 100;
        } else if (value >= 1000) {
          result += (current == 0 ? 1 : current) * value;
          current = 0;
        } else {
          current += value;
        }
      }
    }

    return result + current;
  }
}
