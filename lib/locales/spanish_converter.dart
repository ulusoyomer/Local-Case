import '../enum/local_case_language_enum.dart';
import 'number_converter.dart';

/// A converter class for handling Spanish-specific case conversions
/// and number-to-words transformation.
class SpanishConverter {
  /// A map for converting uppercase Spanish characters to their lowercase equivalents.
  final Map<String, String> spanishLowercaseMap = {
    'Ñ': 'ñ',
    'Á': 'á',
    'É': 'é',
    'Í': 'í',
    'Ó': 'ó',
    'Ú': 'ú',
    'Ü': 'ü'
  };

  /// A map for converting lowercase Spanish characters to their uppercase equivalents.
  final Map<String, String> spanishUppercaseMap = {
    'ñ': 'Ñ',
    'á': 'Á',
    'é': 'É',
    'í': 'Í',
    'ó': 'Ó',
    'ú': 'Ú',
    'ü': 'Ü'
  };

  /// Converts a number between 11 and 19 to its Spanish word equivalent.
  ///
  /// This function provides specific words for Spanish "teens" (11 to 19),
  /// such as "once" for 11 and "doce" for 12.
  ///
  /// Example:
  /// ```dart
  /// SpanishConverter.spanishTeens(13);
  /// // Output: "trece"
  /// ```
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

  /// Converts the given [text] to lowercase using Spanish-specific rules.
  ///
  /// This function maps uppercase Spanish characters to their lowercase
  /// equivalents and returns the resulting lowercase string.
  ///
  /// Example:
  /// ```dart
  /// SpanishConverter().toLowercase("ÑANDÚ");
  /// // Output: "ñandú"
  /// ```
  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return spanishLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  /// Converts the given [text] to uppercase using Spanish-specific rules.
  ///
  /// This function maps lowercase Spanish characters to their uppercase
  /// equivalents and returns the resulting uppercase string.
  ///
  /// Example:
  /// ```dart
  /// SpanishConverter().toUppercase("ñandú");
  /// // Output: "ÑANDÚ"
  /// ```
  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return spanishUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

  /// Converts a given [number] to its word representation in Spanish.
  ///
  /// This method uses Spanish language-specific words for numbers and
  /// supports values up to one million. For example, 256 is converted
  /// to "doscientos cincuenta y seis" in Spanish.
  ///
  /// Example:
  /// ```dart
  /// SpanishConverter.convertNumberToWords(256);
  /// // Output: "doscientos cincuenta y seis"
  /// ```
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
