/// A custom exception class for handling errors specific to locale case conversions.
///
/// This exception is used to handle errors like invalid ranges or unsupported languages
/// within the `LocalCase` package.
class LocaleCaseError implements Exception {
  /// The error message describing the exception.
  final String message;

  /// Creates a new `LocaleCaseError` with the given [message].
  LocaleCaseError(this.message);

  /// Returns a string representation of the error message.
  @override
  String toString() => "LocaleCaseError: $message";

  /// Creates an error indicating that the number is out of the valid range.
  ///
  /// This error is thrown when a number is not within the range of 0 to 1,000,000.
  ///
  /// Example:
  /// ```dart
  /// throw LocaleCaseError.invalidRange();
  /// ```
  static LocaleCaseError invalidRange() {
    return LocaleCaseError(
        "Invalid range: The number must be between 0 and 1,000,000.");
  }

  /// Creates an error indicating that the specified language is not supported.
  ///
  /// This error is thrown when a language that is not supported by the `LocalCase`
  /// package is requested.
  ///
  /// Example:
  /// ```dart
  /// throw LocaleCaseError.unsupportedLanguage();
  /// ```
  static LocaleCaseError unsupportedLanguage() {
    return LocaleCaseError(
        "Unsupported language: This language is not supported.");
  }
}
