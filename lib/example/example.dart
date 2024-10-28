import 'package:local_case/local_case.dart';
import 'package:local_case/enum/local_case_language_enum.dart';

void main() {
  // Example of converting text to lowercase in different languages
  print(LocalCase.toLowercase(
      text: 'ÉNERGIE RENOUVELABLE', language: LocalCaseLanguage.french));
  print(LocalCase.toLowercase(
      text: 'BUENOS DÍAS', language: LocalCaseLanguage.spanish));
  print(LocalCase.toLowercase(
      text: 'GUTEN TAG', language: LocalCaseLanguage.german));

  // Example of converting text to uppercase in Turkish
  print(LocalCase.toUppercase(
      text: 'merhaba dünya', language: LocalCaseLanguage.turkish));

  // Example of converting a number to words in different languages
  print(LocalCase.convertNumberToWords(
      number: 123, language: LocalCaseLanguage.german)); // Output: "einhundertdreiundzwanzig"
  print(LocalCase.convertNumberToWords(
      number: 456, language: LocalCaseLanguage.spanish)); // Output: "cuatrocientos cincuenta y seis"
  print(LocalCase.convertNumberToWords(
      number: 789, language: LocalCaseLanguage.french)); // Output: "sept cent quatre-vingt-neuf"
  print(LocalCase.convertNumberToWords(
      number: 234, language: LocalCaseLanguage.czech)); // Output: "dvě stě třicet čtyři"
  print(LocalCase.convertNumberToWords(
      number: 567, language: LocalCaseLanguage.turkish)); // Output: "beş yüz altmış yedi"

  // Error handling example
  try {
    print(LocalCase.toLowercase(
        text: 'unsupported', language: LocalCaseLanguage.unknown));
  } catch (e) {
    print(e); // Output: LocaleCaseError: Unsupported language
  }

  // Example of error handling with invalid number range
  try {
    print(LocalCase.convertNumberToWords(
        number: 1000000, language: LocalCaseLanguage.turkish));
  } catch (e) {
    print(e); // Output: LocaleCaseError: Invalid range
  }
}