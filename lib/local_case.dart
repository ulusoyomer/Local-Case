import 'package:local_case/enum/local_case_language_enum.dart';
import 'package:local_case/errors/local_case_error.dart';
import 'package:local_case/locales/german_converter.dart';
import 'package:local_case/locales/turkish_converter.dart';

import 'locales/czech_converter.dart';
import 'locales/french_converter.dart';
import 'locales/spanish_converter.dart';

class LocalCase {
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
