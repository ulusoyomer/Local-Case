class LocaleCaseError implements Exception {
  final String message;
  LocaleCaseError(this.message);
  @override
  String toString() => "LocaleCaseError: $message";

  static LocaleCaseError invalidRange() {
    return LocaleCaseError(
        "Invalid range: The number must be between 0 and 1,000,000.");
  }

  static LocaleCaseError unsupportedLanguage() {
    return LocaleCaseError(
        "Unsupported language: This language is not supported.");
  }
}
