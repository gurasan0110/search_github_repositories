enum Sort {
  bestMatch,
  stars,
  forks,
  updated;

  String get name {
    switch (this) {
      case bestMatch:
        return 'best match';
      case stars:
        return 'stars';
      case forks:
        return 'forks';
      case updated:
        return 'updated';
    }
  }
}
