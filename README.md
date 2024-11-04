
# LocalCase

**LocalCase** is a Flutter package that provides localized case conversion and number-to-words transformation for multiple languages. This package allows you to convert text to uppercase or lowercase following language-specific rules and transform numbers into words. It currently supports French, Spanish, Czech, German, and Turkish.

## Features
- **Localized Case Conversion**: Convert text to lowercase or uppercase with language-specific transformations.
- **Number-to-Words Conversion**: Convert numbers up to one million into words for supported languages.
- **Custom Error Handling**: Provides clear error messages for unsupported languages or invalid inputs.

## Installation

Add `local_case` to your `pubspec.yaml` file:
```yaml
dependencies:
  local_case: ^0.0.6
```

Then, run `flutter pub get` to install the package.

## Usage

### Importing the Package
```dart
import 'package:local_case/local_case.dart';
import 'package:local_case/enum/local_case_language_enum.dart';
```

### Converting Text to Lowercase
```dart
String lowercaseText = LocalCase.toLowercase(
  text: 'HALLO WELT',
  language: LocalCaseLanguage.german,
);
print(lowercaseText); // Ausgabe: hallo welt (nach deutschen Konventionen)
```

### Converting Text to Uppercase
```dart
String uppercaseText = LocalCase.toUppercase(
  text: 'merhaba dünya',
  language: LocalCaseLanguage.turkish,
);
print(uppercaseText); // Çıktı: MERHABA DÜNYA (Türk dil kurallarına göre)
```

### Converting Numbers to Words
```dart
String numberInWords = LocalCase.convertNumberToWords(
  number: 256,
  language: LocalCaseLanguage.spanish,
);
print(numberInWords); // Output: doscientos cincuenta y seis (in Spanish)
```

## Supported Languages

The `LocalCaseLanguage` enum supports the following languages:
- **French**
- **Spanish**
- **Czech**
- **German**
- **Turkish**

## Error Handling

If you use an unsupported language or provide an invalid input, `LocalCase` will throw a `LocaleCaseError.unsupportedLanguage()` exception. Make sure to handle this exception in your application.

### Example
```dart
try {
String result = LocalCase.toUppercase(
text: 'example text',
language: LocalCaseLanguage.unknown, // Unsupported language
);
} catch (e) {
print(e); // Output: Unsupported language error
}
```

## Contributions

Contributions are welcome! If you have ideas to support additional languages or improve functionality, feel free to open a pull request or submit an issue.

## License

This project is licensed under the MIT License.
