import 'package:local_case/local_case.dart';
import 'package:local_case/enum/local_case_language_enum.dart';

void main() {
  // Farklı dillerde metni küçük harfe dönüştürme örnekleri
  print(LocalCase.toLowercase(
      text: 'ÉNERGIE RENOUVELABLE', language: LocalCaseLanguage.french));
  print(LocalCase.toLowercase(
      text: 'BUENOS DÍAS', language: LocalCaseLanguage.spanish));
  print(LocalCase.toLowercase(
      text: 'GUTEN TAG', language: LocalCaseLanguage.german));

  // Türkçe büyük harfe dönüştürme örneği
  print(LocalCase.toUppercase(
      text: 'merhaba dünya', language: LocalCaseLanguage.turkish));

  // Farklı dillerde sayıları kelimelere dönüştürme örnekleri
  print(LocalCase.convertNumberToWords(
      number: 123,
      language: LocalCaseLanguage.german)); // Çıktı: "einhundertdreiundzwanzig"
  print(LocalCase.convertNumberToWords(
      number: 456,
      language: LocalCaseLanguage
          .spanish)); // Çıktı: "cuatrocientos cincuenta y seis"
  print(LocalCase.convertNumberToWords(
      number: 789,
      language:
          LocalCaseLanguage.french)); // Çıktı: "sept cent quatre-vingt-neuf"
  print(LocalCase.convertNumberToWords(
      number: 234,
      language: LocalCaseLanguage.czech)); // Çıktı: "dvě stě třicet čtyři"
  print(LocalCase.convertNumberToWords(
      number: 567,
      language: LocalCaseLanguage.turkish)); // Çıktı: "beş yüz altmış yedi"

  // Hata yönetimi örneği
  try {
    print(LocalCase.toLowercase(
        text: 'unsupported', language: LocalCaseLanguage.unknown));
  } catch (e) {
    print(e); // Çıktı: LocaleCaseError: Unsupported language
  }

  // Geçersiz sayı aralığı için hata yönetimi örneği
  try {
    print(LocalCase.convertNumberToWords(
        number: 1000000, language: LocalCaseLanguage.turkish));
  } catch (e) {
    print(e); // Çıktı: LocaleCaseError: Invalid range
  }
}
