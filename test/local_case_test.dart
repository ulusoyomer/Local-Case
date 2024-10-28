import 'package:flutter_test/flutter_test.dart';
import 'package:local_case/enum/local_case_language_enum.dart';
import 'package:local_case/local_case.dart';
import 'package:local_case/errors/local_case_error.dart';

void main() {
  group('toLowercase Tests', () {
    test('French lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'ÉNERGIE RENOUVELABLE', language: LocalCaseLanguage.french),
          'énergie renouvelable');
      expect(
          LocalCase.toLowercase(
              text: 'BONJOUR MON AMI', language: LocalCaseLanguage.french),
          'bonjour mon ami');
      expect(
          LocalCase.toLowercase(
              text: 'AU REVOIR', language: LocalCaseLanguage.french),
          'au revoir');
      expect(
          LocalCase.toLowercase(
              text: 'ÉCOLE PUBLIQUE', language: LocalCaseLanguage.french),
          'école publique');
      expect(
          LocalCase.toLowercase(
              text: 'ÇA VA BIEN', language: LocalCaseLanguage.french),
          'ça va bien');
    });

    test('Spanish lowercase conversion', () {
      expect(
          LocalCase.toLowercase(text: 'HOLA', language: LocalCaseLanguage.spanish),
          'hola');
      expect(
          LocalCase.toLowercase(
              text: 'BUENOS DÍAS', language: LocalCaseLanguage.spanish),
          'buenos días');
      expect(
          LocalCase.toLowercase(
              text: 'BUENAS NOCHES', language: LocalCaseLanguage.spanish),
          'buenas noches');
      expect(
          LocalCase.toLowercase(
              text: 'GRACIAS POR TODO', language: LocalCaseLanguage.spanish),
          'gracias por todo');
      expect(
          LocalCase.toLowercase(
              text: 'HASTA MAÑANA', language: LocalCaseLanguage.spanish),
          'hasta mañana');
      expect(
          LocalCase.toLowercase(
              text: '¿QUÉ TAL?', language: LocalCaseLanguage.spanish),
          '¿qué tal?');
    });

    test('German lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'GUTEN TAG', language: LocalCaseLanguage.german),
          'guten tag');
      expect(
          LocalCase.toLowercase(
              text: 'AUF WIEDERSEHEN', language: LocalCaseLanguage.german),
          'auf wiedersehen');
      expect(
          LocalCase.toLowercase(
              text: 'SCHÖNE TRÄUME', language: LocalCaseLanguage.german),
          'schöne träume');
      expect(
          LocalCase.toLowercase(
              text: 'HERZLICH WILLKOMMEN', language: LocalCaseLanguage.german),
          'herzlich willkommen');
      expect(
          LocalCase.toLowercase(
              text: 'VIELEN DANK', language: LocalCaseLanguage.german),
          'vielen dank');
      expect(
          LocalCase.toLowercase(
              text: 'GUTEN ABEND', language: LocalCaseLanguage.german),
          'guten abend');
    });

    test('Czech lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'DOBRÝ DEN', language: LocalCaseLanguage.czech),
          'dobrý den');
      expect(
          LocalCase.toLowercase(
              text: 'NA SHLEDANOU', language: LocalCaseLanguage.czech),
          'na shledanou');
      expect(
          LocalCase.toLowercase(
              text: 'DĚKUJI VÁM', language: LocalCaseLanguage.czech),
          'děkuji vám');
      expect(
          LocalCase.toLowercase(
              text: 'DOBROU NOC', language: LocalCaseLanguage.czech),
          'dobrou noc');
      expect(
          LocalCase.toLowercase(
              text: 'AHOJ PŘÍTELI', language: LocalCaseLanguage.czech),
          'ahoj příteli');
    });

    test('Turkish lowercase conversion', () {
      expect(
          LocalCase.toLowercase(
              text: 'MERHABA DÜNYA', language: LocalCaseLanguage.turkish),
          'merhaba dünya');
      expect(
          LocalCase.toLowercase(
              text: 'İYİ AKŞAMLAR', language: LocalCaseLanguage.turkish),
          'iyi akşamlar');
      expect(
          LocalCase.toLowercase(
              text: 'GÜNAYDIN', language: LocalCaseLanguage.turkish),
          'günaydın');
      expect(
          LocalCase.toLowercase(
              text: 'TEŞEKKÜR EDERİM', language: LocalCaseLanguage.turkish),
          'teşekkür ederim');
      expect(
          LocalCase.toLowercase(
              text: 'HOŞÇA KAL', language: LocalCaseLanguage.turkish),
          'hoşça kal');
    });
  });

  group('toUppercase Tests', () {

    test('Czech uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'říjen', language: LocalCaseLanguage.czech),
          'ŘÍJEN');
      expect(
          LocalCase.toUppercase(
              text: 'dobrý večer', language: LocalCaseLanguage.czech),
          'DOBRÝ VEČER');
      expect(
          LocalCase.toUppercase(
              text: 'nashledanou', language: LocalCaseLanguage.czech),
          'NASHLEDANOU');
      expect(
          LocalCase.toUppercase(
              text: 'ahoj příteli', language: LocalCaseLanguage.czech),
          'AHOJ PŘÍTELI');
      expect(
          LocalCase.toUppercase(
              text: 'děkuji vám', language: LocalCaseLanguage.czech),
          'DĚKUJI VÁM');
    });

    test('Turkish uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'günaydın', language: LocalCaseLanguage.turkish),
          'GÜNAYDIN');
      expect(
          LocalCase.toUppercase(
              text: 'iyi akşamlar', language: LocalCaseLanguage.turkish),
          'İYİ AKŞAMLAR');
      expect(
          LocalCase.toUppercase(
              text: 'iyi geceler', language: LocalCaseLanguage.turkish),
          'İYİ GECELER');
      expect(
          LocalCase.toUppercase(
              text: 'hoşça kal', language: LocalCaseLanguage.turkish),
          'HOŞÇA KAL');
      expect(
          LocalCase.toUppercase(
              text: 'teşekkür ederim', language: LocalCaseLanguage.turkish),
          'TEŞEKKÜR EDERİM');
    });

    test('French uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'bonjour mon ami', language: LocalCaseLanguage.french),
          'BONJOUR MON AMI');
      expect(
          LocalCase.toUppercase(
              text: 'école publique', language: LocalCaseLanguage.french),
          'ÉCOLE PUBLIQUE');
      expect(
          LocalCase.toUppercase(
              text: 'ça va bien', language: LocalCaseLanguage.french),
          'ÇA VA BIEN');
      expect(
          LocalCase.toUppercase(
              text: 'au revoir', language: LocalCaseLanguage.french),
          'AU REVOIR');
      expect(
          LocalCase.toUppercase(
              text: 'merci beaucoup', language: LocalCaseLanguage.french),
          'MERCI BEAUCOUP');
    });

    test('Spanish uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'hola', language: LocalCaseLanguage.spanish),
          'HOLA');
      expect(
          LocalCase.toUppercase(
              text: 'buenos días', language: LocalCaseLanguage.spanish),
          'BUENOS DÍAS');
      expect(
          LocalCase.toUppercase(
              text: 'buenas noches', language: LocalCaseLanguage.spanish),
          'BUENAS NOCHES');
      expect(
          LocalCase.toUppercase(
              text: 'gracias por todo', language: LocalCaseLanguage.spanish),
          'GRACIAS POR TODO');
      expect(
          LocalCase.toUppercase(
              text: 'hasta mañana', language: LocalCaseLanguage.spanish),
          'HASTA MAÑANA');
    });

    test('German uppercase conversion', () {
      expect(
          LocalCase.toUppercase(
              text: 'guten tag', language: LocalCaseLanguage.german),
          'GUTEN TAG');
      expect(
          LocalCase.toUppercase(
              text: 'auf wiedersehen', language: LocalCaseLanguage.german),
          'AUF WIEDERSEHEN');
      expect(
          LocalCase.toUppercase(
              text: 'schöne träume', language: LocalCaseLanguage.german),
          'SCHÖNE TRÄUME');
      expect(
          LocalCase.toUppercase(
              text: 'herzlich willkommen', language: LocalCaseLanguage.german),
          'HERZLICH WILLKOMMEN');
      expect(
          LocalCase.toUppercase(
              text: 'danke schön', language: LocalCaseLanguage.german),
          'DANKE SCHÖN');
    });
  });

  group('convertNumberToWords Tests', () {
    test('Convert number to words in French', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 567, language: LocalCaseLanguage.french),
          'cinq cent soixante-sept');
      expect(
          LocalCase.convertNumberToWords(
              number: 999, language: LocalCaseLanguage.french),
          'neuf cent quatre-vingt-dix-neuf');
      expect(
          LocalCase.convertNumberToWords(
              number: 450, language: LocalCaseLanguage.french),
          'quatre cent cinquante');
      expect(
          LocalCase.convertNumberToWords(
              number: 120, language: LocalCaseLanguage.french),
          'cent vingt');
      expect(
          LocalCase.convertNumberToWords(
              number: 305, language: LocalCaseLanguage.french),
          'trois cent cinq');
      expect(
          LocalCase.convertNumberToWords(
              number: 1000, language: LocalCaseLanguage.french),
          'mille');
    });

    test('Convert number to words in Spanish', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 654, language: LocalCaseLanguage.spanish),
          'seiscientos cincuenta y cuatro');
      expect(
          LocalCase.convertNumberToWords(
              number: 777, language: LocalCaseLanguage.spanish),
          'setecientos setenta y siete');
      expect(
          LocalCase.convertNumberToWords(
              number: 900, language: LocalCaseLanguage.spanish),
          'novecientos');
      expect(
          LocalCase.convertNumberToWords(
              number: 432, language: LocalCaseLanguage.spanish),
          'cuatrocientos treinta y dos');
      expect(
          LocalCase.convertNumberToWords(
              number: 100, language: LocalCaseLanguage.spanish),
          'cien');
      expect(
          LocalCase.convertNumberToWords(
              number: 1234, language: LocalCaseLanguage.spanish),
          'mil doscientos treinta y cuatro');
    });

    test('Convert number to words in German', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 321, language: LocalCaseLanguage.german),
          'dreihundert einundzwanzig');
      expect(
          LocalCase.convertNumberToWords(
              number: 888, language: LocalCaseLanguage.german),
          'achthundert achtundachtzig');
      expect(
          LocalCase.convertNumberToWords(
              number: 999, language: LocalCaseLanguage.german),
          'neunhundert neunundneunzig');
      expect(
          LocalCase.convertNumberToWords(
              number: 500, language: LocalCaseLanguage.german),
          'fünfhundert');
      expect(
          LocalCase.convertNumberToWords(
              number: 234, language: LocalCaseLanguage.german),
          'zweihundert vierunddreißig');
      expect(
          LocalCase.convertNumberToWords(
              number: 1200, language: LocalCaseLanguage.german),
          'tausend zweihundert');
    });

    test('Convert number to words in Czech', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 234, language: LocalCaseLanguage.czech),
          'dvě stě třicet čtyři');
      expect(
          LocalCase.convertNumberToWords(
              number: 789, language: LocalCaseLanguage.czech),
          'sedm set osmdesát devět');
      expect(
          LocalCase.convertNumberToWords(
              number: 900, language: LocalCaseLanguage.czech),
          'devět set');
      expect(
          LocalCase.convertNumberToWords(
              number: 110, language: LocalCaseLanguage.czech),
          'sto deset');
      expect(
          LocalCase.convertNumberToWords(
              number: 555, language: LocalCaseLanguage.czech),
          'pět set padesát pět');
      expect(
          LocalCase.convertNumberToWords(
              number: 2000, language: LocalCaseLanguage.czech),
          'dva tisíce');
    });

    test('Convert number to words in Turkish', () {
      expect(
          LocalCase.convertNumberToWords(
              number: 123, language: LocalCaseLanguage.turkish),
          'yüz yirmi üç');
      expect(
          LocalCase.convertNumberToWords(
              number: 876, language: LocalCaseLanguage.turkish),
          'sekiz yüz yetmiş altı');
      expect(
          LocalCase.convertNumberToWords(
              number: 400, language: LocalCaseLanguage.turkish),
          'dört yüz');
      expect(
          LocalCase.convertNumberToWords(
              number: 99, language: LocalCaseLanguage.turkish),
          'doksan dokuz');
      expect(
          LocalCase.convertNumberToWords(
              number: 150, language: LocalCaseLanguage.turkish),
          'yüz elli');
      expect(
          LocalCase.convertNumberToWords(
              number: 2000, language: LocalCaseLanguage.turkish),
          'iki bin');
    });
  });

  group('Error Handling Tests', () {
    test('Unsupported language error', () {
      expect(() => LocalCase.toLowercase(
          text: 'unsupported', language: LocalCaseLanguage.unknown),
          throwsA(isA<LocaleCaseError>()));
    });

    test('Invalid range error - too high', () {
      expect(() => LocalCase.convertNumberToWords(
          number: 1000000, language: LocalCaseLanguage.turkish),
          throwsA(isA<LocaleCaseError>()));
    });

    test('Invalid range error - negative', () {
      expect(() => LocalCase.convertNumberToWords(
          number: -1, language: LocalCaseLanguage.turkish),
          throwsA(isA<LocaleCaseError>()));
    });

  });
}