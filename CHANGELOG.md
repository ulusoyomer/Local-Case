# Changelog

## [0.0.5] - 2024-10-28
### Changed
- Updated Dart SDK constraints in `pubspec.yaml` to ">=2.12.0 <4.0.0" to ensure compatibility with null safety and future Dart versions.

## [0.0.4] - 2024-10-28
### Documentation
- Translated comments in `example/main.dart` to English for better accessibility and clarity for international users.

## [0.0.3] - 2024-10-28
### Added
- New example in `example/main.dart` demonstrating `LocalCase` usage for:
    - Text conversions to lowercase and uppercase in different languages.
    - Number-to-words conversion in supported languages.
    - Error handling for unsupported languages and invalid ranges.
- Created `example/README.md` with instructions for running and understanding the example.

### Removed
- Obsolete `lib/example.dart` file removed to reduce redundancy.

## [0.0.2] - 2024-10-28
### Added
- Added `example/example.dart` with usage examples for:
    - Lowercase and uppercase text conversions across different languages (Turkish, French, Spanish, German, Czech).
    - Number-to-words conversion for multiple languages, including Turkish, French, Spanish, German, and Czech.
    - Error handling examples for unsupported languages and invalid number ranges.
- Enhanced documentation for `LocalCase` methods to improve readability and usage clarity.
- Updated `LocaleCaseError` messages for unsupported languages and invalid number ranges.

## [0.0.1] - 2024-10-28
### Added
- Initial release of the `LocalCase` package.
- Support for localized lowercase and uppercase conversions.
- Language support for French, Spanish, Czech, German, and Turkish.
- Number-to-words conversion up to one million for supported languages.