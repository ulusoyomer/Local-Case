import 'package:local_case/locales/number_converter.dart';
import '../enum/local_case_language_enum.dart';

/// A converter class for handling Turkish-specific case conversions
/// and number-to-words transformation.
class TurkishConverter {
  /// A map for converting uppercase Turkish characters to their lowercase equivalents.
  final Map<String, String> turkishLowercaseMap = {
    'I': 'ı',
    'İ': 'i',
    'Ğ': 'ğ',
    'Ü': 'ü',
    'Ş': 'ş',
    'Ö': 'ö',
    'Ç': 'ç'
  };

  /// A map for converting lowercase Turkish characters to their uppercase equivalents.
  final Map<String, String> turkishUppercaseMap = {
    'ı': 'I',
    'i': 'İ',
    'ğ': 'Ğ',
    'ü': 'Ü',
    'ş': 'Ş',
    'ö': 'Ö',
    'ç': 'Ç'
  };

  /// Converts the given [text] to lowercase using Turkish-specific rules.
  ///
  /// This function maps uppercase Turkish characters to their lowercase
  /// equivalents and returns the resulting lowercase string.
  ///
  /// Example:
  /// ```dart
  /// TurkishConverter().toLowercase("İSTANBUL");
  /// // Output: "istanbul"
  /// ```
  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return turkishLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  /// Converts the given [text] to uppercase using Turkish-specific rules.
  ///
  /// This function maps lowercase Turkish characters to their uppercase
  /// equivalents and returns the resulting uppercase string.
  ///
  /// Example:
  /// ```dart
  /// TurkishConverter().toUppercase("istanbul");
  /// // Output: "İSTANBUL"
  /// ```
  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return turkishUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  /// Converts a given [number] to its word representation in Turkish.
  ///
  /// This method uses Turkish language-specific words for numbers and
  /// supports values up to one million. For example, 256 is converted
  /// to "iki yüz elli altı" in Turkish.
  ///
  /// Example:
  /// ```dart
  /// TurkishConverter.convertNumberToWords(256);
  /// // Output: "iki yüz elli altı"
  /// ```
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
