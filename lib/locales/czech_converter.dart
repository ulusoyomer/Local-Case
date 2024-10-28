import '../enum/local_case_language_enum.dart';
import 'number_converter.dart';

/// A converter class for handling Czech-specific case conversions
/// and number-to-words transformation.
class CzechConverter {
  /// A map for converting uppercase characters to lowercase specific to the Czech language.
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

  /// A map for converting lowercase characters to uppercase specific to the Czech language.
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

  /// Converts the given [text] to lowercase using Czech-specific rules.
  ///
  /// This function maps uppercase Czech characters to their lowercase
  /// equivalents and returns the resulting lowercase string.
  ///
  /// Example:
  /// ```dart
  /// CzechConverter().toLowercase("ČÁSTKA");
  /// // Output: "částka"
  /// ```
  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return czechLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  /// Converts the given [text] to uppercase using Czech-specific rules.
  ///
  /// This function maps lowercase Czech characters to their uppercase
  /// equivalents and returns the resulting uppercase string.
  ///
  /// Example:
  /// ```dart
  /// CzechConverter().toUppercase("částka");
  /// // Output: "ČÁSTKA"
  /// ```
  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return czechUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  /// Converts a given [number] to its word representation in Czech.
  ///
  /// This method uses Czech language-specific words for numbers and
  /// supports values up to one million. For example, 256 is converted
  /// to "dvě stě padesát šest" in Czech.
  ///
  /// Example:
  /// ```dart
  /// CzechConverter.convertNumberToWords(256);
  /// // Output: "dvě stě padesát šest"
  /// ```
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
