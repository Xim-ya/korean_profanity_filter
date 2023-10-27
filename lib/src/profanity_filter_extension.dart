import 'package:korean_profanity_filter/src/profanity_filter.dart';

extension ProfanityFilterExtension on String {
  ///
  /// Check if the string contains bad words
  ///
  bool get containsBadWords => ProfanityFilter.regex.hasMatch(this);

  ///
  /// Remove all bad words
  /// Including it's whitespace
  ///
  List<String> get getListOfBadWords {
    return ProfanityFilter.regex
        .allMatches(this)
        .map((match) => match.group(0))
        .map((word) => word!)
        .toList();
  }

  ///
  /// Delete all of bad words
  /// Also it's white space considered to delete
  ///
  String get cleanBadWords {
    String result = replaceAllMapped(ProfanityFilter.regex, (match) {
      String matchedText = match.group(0)!;
      String replacement = ' ' * matchedText.length;
      return replacement;
    });
    return result.replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  ///
  /// Replace bad words with specific strings
  ///
  String replaceBadWords(String replacement) {
    return replaceAll(ProfanityFilter.regex, replacement);
  }
}
