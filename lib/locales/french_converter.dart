import '../enum/local_case_language_enum.dart';
import 'number_converter.dart';

class FrenchConverter {
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

  String toLowercase(String text) {
    return text
        .split('')
        .map((char) {
          return frenchLowercaseMap[char] ?? char;
        })
        .join('')
        .toLowerCase();
  }

  String toUppercase(String text) {
    return text
        .split('')
        .map((char) {
          return frenchUppercaseMap[char] ?? char;
        })
        .join('')
        .toUpperCase();
  }

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
