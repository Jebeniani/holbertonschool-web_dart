String longestUniqueSubstring(String str) {
  int n = str.length;
  int start = 0;
  int maxLength = 0;
  int startIndex = 0;

  Map<String, int?> lastIndexMap = {};

  for (int i = 0; i < n; i++) {
    String currentChar = str[i];

    if (lastIndexMap.containsKey(currentChar) &&
        lastIndexMap[currentChar]! >= start) {
      start = lastIndexMap[currentChar]! + 1;
    }

    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
      startIndex = start;
    }

    lastIndexMap[currentChar] = i;
  }

  return str.substring(startIndex, startIndex + maxLength);
}
