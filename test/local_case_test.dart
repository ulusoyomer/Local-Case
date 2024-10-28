import 'package:flutter_test/flutter_test.dart';
import 'package:local_case/enum/local_case_language_enum.dart';
import 'package:local_case/local_case.dart';
import 'package:local_case/errors/local_case_error.dart';

void main() {
  /// Tests for `toLowercase` method across different languages.
  group('toLowercase Tests', () {
    /// Tests French lowercase conversion.
    test('French lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'ÉNERGIE RENOUVELABLE', language: LocalCaseLanguage.french),
          'énergie renouvelable');
      expect(
          LocalCase.toLowercase(
              text: 'BONJOUR MON AMI', language: LocalCaseLanguage.french),
          'bonjour mon ami');
    });

    /// Tests Spanish lowercase conversion.
    test('Spanish lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'HOLA', language: LocalCaseLanguage.spanish),
          'hola');
      expect(
          LocalCase.toLowercase(
              text: 'BUENAS NOCHES', language: LocalCaseLanguage.spanish),
          'buenas noches');
    });

    /// Tests German lowercase conversion.
    test('German lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'GUTEN TAG', language: LocalCaseLanguage.german),
          'guten tag');
      expect(
          LocalCase.toLowercase(
              text: 'SCHÖNE TRÄUME', language: LocalCaseLanguage.german),
          'schöne träume');
    });

    /// Tests Czech lowercase conversion.
    test('Czech lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'DOBRÝ DEN', language: LocalCaseLanguage.czech),
          'dobrý den');
      expect(
          LocalCase.toLowercase(
              text: 'DĚKUJI VÁM', language: LocalCaseLanguage.czech),
          'děkuji vám');
    });

    /// Tests Turkish lowercase conversion.
    test('Turkish lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'MERHABA DÜNYA', language: LocalCaseLanguage.turkish),
          'merhaba dünya');
      expect(
          LocalCase.toLowercase(
              text: 'TEŞEKKÜR EDERİM', language: LocalCaseLanguage.turkish),
          'teşekkür ederim');
    });
  });

  /// Tests for `toUppercase` method across different languages.
  group('toUppercase Tests', () {
    /// Tests Czech uppercase conversion.
    test('Czech uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'říjen', language: LocalCaseLanguage.czech),
          'ŘÍJEN');
    });

    /// Tests Turkish uppercase conversion.
    test('Turkish uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'günaydın', language: LocalCaseLanguage.turkish),
          'GÜNAYDIN');
    });

    /// Tests French uppercase conversion.
    test('French uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'bonjour mon ami', language: LocalCaseLanguage.french),
          'BONJOUR MON AMI');
    });

    /// Tests Spanish uppercase conversion.
    test('Spanish uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'hola', language: LocalCaseLanguage.spanish),
          'HOLA');
    });

    /// Tests German uppercase conversion.
    test('German uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'guten tag', language: LocalCaseLanguage.german),
          'GUTEN TAG');
    });
  });

  /// Tests for `convertNumberToWords` method across different languages.
  group('convertNumberToWords Tests', () {
    /// Tests conversion of numbers to words in French.
    test('Convert number to words in French', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 567, language: LocalCaseLanguage.french),
          'cinq cent soixante-sept');
    });

    /// Tests conversion of numbers to words in Spanish.
    test('Convert number to words in Spanish', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 654, language: LocalCaseLanguage.spanish),
          'seiscientos cincuenta y cuatro');
    });

    /// Tests conversion of numbers to words in German.
    test('Convert number to words in German', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 321, language: LocalCaseLanguage.german),
          'dreihundert einundzwanzig');
    });

    /// Tests conversion of numbers to words in Czech.
    test('Convert number to words in Czech', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 234, language: LocalCaseLanguage.czech),
          'dvě stě třicet čtyři');
    });

    /// Tests conversion of numbers to words in Turkish.
    test('Convert number to words in Turkish', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 123, language: LocalCaseLanguage.turkish),
          'yüz yirmi üç');
    });
  });

  /// Tests for error handling, including unsupported language and invalid range errors.
  group('Error Handling Tests', () {
    /// Tests handling of unsupported language error.
    test('Unsupported language error', () {
      expect(
          () => LocalCase.toLowercase(
              text: 'unsupported', language: LocalCaseLanguage.unknown),
          throwsA(isA<LocaleCaseError>()));
    });

    /// Tests handling of invalid range error when number is too high.
    test('Invalid range error - too high', () {
      expect(
          () => LocalCase.convertNumberToWords(
              number: 1000000, language: LocalCaseLanguage.turkish),
          throwsA(isA<LocaleCaseError>()));
    });

    /// Tests handling of invalid range error when number is negative.
    test('Invalid range error - negative', () {
      expect(
          () => LocalCase.convertNumberToWords(
              number: -1, language: LocalCaseLanguage.turkish),
          throwsA(isA<LocaleCaseError>()));
    });
  });
}
