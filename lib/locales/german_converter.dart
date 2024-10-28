import '../enum/local_case_language_enum.dart';
import 'number_converter.dart';

/// A converter class for handling German-specific case conversions
/// and number-to-words transformation.
class GermanConverter {
  /// A map for converting uppercase German characters to their lowercase equivalents.
  final Map<String, String> germanLowercaseMap = {
    'Ä': 'ä',
    'Ö': 'ö',
    'Ü': 'ü',
    'ẞ': 'ß'
  };

  /// A map for converting lowercase German characters to their uppercase equivalents.
  final Map<String, String> germanUppercaseMap = {
    'ä': 'Ä',
    'ö': 'Ö',
    'ü': 'Ü',
    'ß': 'SS'
  };

  /// Converts a number between 11 and 19 to its German word equivalent.
  ///
  /// This function provides specific words for German "teens" (11 to 19),
  /// such as "elf" for 11 and "zwölf" for 12.
  ///
  /// Example:
  /// ```dart
  /// GermanConverter.germanTeens(13);
  /// // Output: "dreizehn"
  /// ```
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

  /// Converts the given [text] to lowercase using German-specific rules.
  ///
  /// This function maps uppercase German characters to their lowercase
  /// equivalents and returns the resulting lowercase string.
  ///
  /// Example:
  /// ```dart
  /// GermanConverter().toLowercase("ÄPFEL");
  /// // Output: "äpfel"
  /// ```
  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return germanLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  /// Converts the given [text] to uppercase using German-specific rules.
  ///
  /// This function maps lowercase German characters to their uppercase
  /// equivalents and returns the resulting uppercase string.
  ///
  /// Example:
  /// ```dart
  /// GermanConverter().toUppercase("äpfel");
  /// // Output: "ÄPFEL"
  /// ```
  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return germanUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  /// Converts a given [number] to its word representation in German.
  ///
  /// This method uses German language-specific words for numbers and
  /// supports values up to one million. For example, 256 is converted
  /// to "zweihundertsechsundfünfzig" in German.
  ///
  /// Example:
  /// ```dart
  /// GermanConverter.convertNumberToWords(256);
  /// // Output: "zweihundertsechsundfünfzig"
  /// ```
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
