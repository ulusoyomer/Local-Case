import 'package:local_case/enum/local_case_language_enum.dart';
import 'package:local_case/locales/german_converter.dart';
import 'package:local_case/locales/spanish_converter.dart';

import '../errors/local_case_error.dart';

/// A utility class for converting numbers to words and words to numbers.
class NumberConverter {
  /// Converts a given [number] to its word representation.
  ///
  /// Parameters:
  /// - [number]: The integer number to be converted (must be between 0 and 999,999).
  /// - [units]: List of unit words for the target language (e.g., ["", "one", "two"]).
  /// - [tens]: List of tens words for the target language (e.g., ["", "ten", "twenty"]).
  /// - [hundreds]: List of hundreds words for the target language.
  /// - [zero]: The word for zero in the target language.
  /// - [thousand]: The word for thousand in the target language.
  /// - [language]: Optional language specifier to handle language-specific cases.
  ///
  /// Throws:
  /// - [LocaleCaseError.invalidRange]: If [number] is outside the 0 to 999,999 range.
  ///
  /// Example:
  /// ```dart
  /// NumberConverter.convertNumberToWords(
  ///   number: 256,
  ///   units: ["", "eins", "zwei", "drei", "vier", "fünf", "sechs", "sieben", "acht", "neun"],
  ///   tens: ["", "zehn", "zwanzig", "dreißig"],
  ///   hundreds: ["", "einhundert", "zweihundert"],
  ///   zero: "null",
  ///   thousand: "tausend",
  ///   language: LocalCaseLanguage.german,
  /// );
  /// // Output: "zweihundertsechsundfünfzig"
  /// ```
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

  /// Converts a given [text] in words to its integer number representation.
  ///
  /// Parameters:
  /// - [text]: The word representation of the number to be converted.
  /// - [wordsToNumbers]: A map of word-to-number conversions for the target language.
  /// - [language]: Optional language specifier to handle language-specific cases.
  ///
  /// Returns:
  /// - The integer representation of the word-based number.
  ///
  /// Example:
  /// ```dart
  /// NumberConverter.convertWordsToNumber(
  ///   text: "zwei hundert sechsundfünfzig",
  ///   wordsToNumbers: {
  ///     "eins": 1, "zwei": 2, "hundert": 100, "sechsundfünfzig": 56
  ///   },
  ///   language: LocalCaseLanguage.german,
  /// );
  /// // Output: 256
  /// ```
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
