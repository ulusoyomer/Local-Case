import 'package:local_case/enum/local_case_language_enum.dart';
import 'package:local_case/errors/local_case_error.dart';
import 'package:local_case/locales/german_converter.dart';
import 'package:local_case/locales/turkish_converter.dart';

import 'locales/czech_converter.dart';
import 'locales/french_converter.dart';
import 'locales/spanish_converter.dart';

/// The `LocalCase` class provides static methods for converting text to uppercase
/// and lowercase and for converting numbers to words based on the specified language.
class LocalCase {
  /// Converts the given [text] to lowercase according to language-specific rules.
  ///
  /// Parameters:
  /// - [text]: The text to be converted to lowercase.
  /// - [language]: The target language for the conversion, specified as a [LocalCaseLanguage].
  ///
  /// Returns:
  /// - The converted lowercase string.
  ///
  /// Throws:
  /// - [LocaleCaseError.unsupportedLanguage] if the specified language is not supported.
  ///
  /// Example:
  /// ```dart
  /// LocalCase.toLowercase(text: "HELLO", language: LocalCaseLanguage.turkish);
  /// // Output: "hello" (in Turkish-specific lowercase conversion)
  /// ```
  static String toLowercase(
      {required String text, required LocalCaseLanguage language}) {
    switch (language) {
      case LocalCaseLanguage.french:
        return FrenchConverter().toLowercase(text);
      case LocalCaseLanguage.spanish:
        return SpanishConverter().toLowercase(text);
      case LocalCaseLanguage.czech:
        return CzechConverter().toLowercase(text);
      case LocalCaseLanguage.german:
        return GermanConverter().toLowercase(text);
      case LocalCaseLanguage.turkish:
        return TurkishConverter().toLowercase(text);
      default:
        throw LocaleCaseError.unsupportedLanguage();
    }
  }

  /// Converts the given [text] to uppercase according to language-specific rules.
  ///
  /// Parameters:
  /// - [text]: The text to be converted to uppercase.
  /// - [language]: The target language for the conversion, specified as a [LocalCaseLanguage].
  ///
  /// Returns:
  /// - The converted uppercase string.
  ///
  /// Throws:
  /// - [LocaleCaseError.unsupportedLanguage] if the specified language is not supported.
  ///
  /// Example:
  /// ```dart
  /// LocalCase.toUppercase(text: "hello", language: LocalCaseLanguage.turkish);
  /// // Output: "HELLO" (in Turkish-specific uppercase conversion)
  /// ```
  static String toUppercase(
      {required String text, required LocalCaseLanguage language}) {
    switch (language) {
      case LocalCaseLanguage.french:
        return FrenchConverter().toUppercase(text);
      case LocalCaseLanguage.spanish:
        return SpanishConverter().toUppercase(text);
      case LocalCaseLanguage.czech:
        return CzechConverter().toUppercase(text);
      case LocalCaseLanguage.german:
        return GermanConverter().toUppercase(text);
      case LocalCaseLanguage.turkish:
        return TurkishConverter().toUppercase(text);
      default:
        throw LocaleCaseError.unsupportedLanguage();
    }
  }

  /// Converts a given [number] to its word representation in the specified language.
  ///
  /// Parameters:
  /// - [number]: The number to be converted to words.
  /// - [language]: The target language for the conversion, specified as a [LocalCaseLanguage].
  ///
  /// Returns:
  /// - The number as a word string in the specified language.
  ///
  /// Throws:
  /// - [LocaleCaseError.unsupportedLanguage] if the specified language is not supported.
  ///
  /// Example:
  /// ```dart
  /// LocalCase.convertNumberToWords(number: 123, language: LocalCaseLanguage.german);
  /// // Output: "einhundertdreiundzwanzig" (in German-specific number conversion)
  /// ```
  static String convertNumberToWords(
      {required int number, required LocalCaseLanguage language}) {
    switch (language) {
      case LocalCaseLanguage.french:
        return FrenchConverter.convertNumberToWords(number);
      case LocalCaseLanguage.spanish:
        return SpanishConverter.convertNumberToWords(number);
      case LocalCaseLanguage.czech:
        return CzechConverter.convertNumberToWords(number);
      case LocalCaseLanguage.german:
        return GermanConverter.convertNumberToWords(number);
      case LocalCaseLanguage.turkish:
        return TurkishConverter.convertNumberToWords(number);
      default:
        throw LocaleCaseError.unsupportedLanguage();
    }
  }
}
