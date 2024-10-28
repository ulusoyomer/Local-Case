import '../enum/local_case_language_enum.dart';
import 'number_converter.dart';

/// A converter class for handling French-specific case conversions
/// and number-to-words transformation.
class FrenchConverter {
  /// A map for converting uppercase French characters to their lowercase equivalents.
  final Map<String, String> frenchLowercaseMap = {
    'É': 'é',
    'È': 'è',
    'Ê': 'ê',
    'Ë': 'ë',
    'À': 'à',
    'Â': 'â',
    'Ô': 'ô',
    'Ç': 'ç',
    'Ù': 'ù',
    'Û': 'û',
    'Ï': 'ï',
    'Î': 'î'
  };

  /// A map for converting lowercase French characters to their uppercase equivalents.
  final Map<String, String> frenchUppercaseMap = {
    'é': 'É',
    'è': 'È',
    'ê': 'Ê',
    'ë': 'Ë',
    'à': 'À',
    'â': 'Â',
    'ô': 'Ô',
    'ç': 'Ç',
    'ù': 'Ù',
    'û': 'Û',
    'ï': 'Ï',
    'î': 'Î'
  };

  /// Converts the given [text] to lowercase using French-specific rules.
  ///
  /// This function maps uppercase French characters to their lowercase
  /// equivalents and returns the resulting lowercase string.
  ///
  /// Example:
  /// ```dart
  /// FrenchConverter().toLowercase("ÉCOLE");
  /// // Output: "école"
  /// ```
  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return frenchLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  /// Converts the given [text] to uppercase using French-specific rules.
  ///
  /// This function maps lowercase French characters to their uppercase
  /// equivalents and returns the resulting uppercase string.
  ///
  /// Example:
  /// ```dart
  /// FrenchConverter().toUppercase("école");
  /// // Output: "ÉCOLE"
  /// ```
  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return frenchUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  /// Converts a given [number] to its word representation in French.
  ///
  /// This method uses French language-specific words for numbers and
  /// supports values up to one million. For example, 256 is converted
  /// to "deux cent cinquante-six" in French.
  ///
  /// Example:
  /// ```dart
  /// FrenchConverter.convertNumberToWords(256);
  /// // Output: "deux cent cinquante-six"
  /// ```
  static String convertNumberToWords(int number) {
    final frenchUnits = [
      "",
      "un",
      "deux",
      "trois",
      "quatre",
      "cinq",
      "six",
      "sept",
      "huit",
      "neuf"
    ];
    final frenchTens = [
      "",
      "dix",
      "vingt",
      "trente",
      "quarante",
      "cinquante",
      "soixante",
      "soixante-dix",
      "quatre-vingt",
      "quatre-vingt-dix"
    ];
    final frenchHundreds = [
      "",
      "cent",
      "deux cent",
      "trois cent",
      "quatre cent",
      "cinq cent",
      "six cent",
      "sept cent",
      "huit cent",
      "neuf cent"
    ];
    final frenchZero = "zéro";
    final frenchThousand = "mille";

    return NumberConverter.convertNumberToWords(
        number: number,
        units: frenchUnits,
        tens: frenchTens,
        hundreds: frenchHundreds,
        zero: frenchZero,
        thousand: frenchThousand,
        language: LocalCaseLanguage.french);
  }
}
