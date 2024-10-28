/// Enum representing the supported languages for localized case conversions
/// and number-to-words transformations in the `LocalCase` package.
enum LocalCaseLanguage {
  /// Represents the Turkish language.
  turkish,

  /// Represents the Spanish language.
  spanish,

  /// Represents the French language.
  french,

  /// Represents the Czech language.
  czech,

  /// Represents the German language.
  german,

  /// Represents an unknown language that is not currently supported.
  ///
  /// This can be used to handle cases where the language is not recognized or supported.
  unknown,
}
