extension StringExtension on String {
  String capitalize() {
    final List<String> words = split(' ');
    final List<String> capitalizedWords = words.map((e) => '${e[0].toUpperCase()}${e.substring(1).toLowerCase()}').toList();
    return capitalizedWords.join(' ');
  }
}
