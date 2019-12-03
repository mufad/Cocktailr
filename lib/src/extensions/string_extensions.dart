extension StringExtensions on String {
  String get allWordsCapitalized {
    // If the String is null or only contains one character.
    if (this == null || this.length <= 1) {
      return this?.toUpperCase() ?? "";
    }

    // If the String contains only one word.
    if (!this.contains(RegExp(r"\s+"))) {
      return "${this[0].toUpperCase()}${this.substring(1)}";
    }

    // If the String contains multiple words.
    return this
        .trim()
        .split(RegExp(r"\s+"))
        .map((word) => word.length > 1
          ? "${word[0].toUpperCase()}${word.substring(1)}"
          : word.toUpperCase())
        .join(" ");
  }
}
