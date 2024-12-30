extension IterableExtension<T> on Iterable<T> {
  List<T> intersperse({required T element}) {
    return _intersperse(element: element).toList();
  }

  Iterable<T> _intersperse({required T element}) sync* {
    final iterator = this.iterator;
    if (iterator.moveNext()) {
      yield iterator.current;
      while (iterator.moveNext()) {
        yield element;
        yield iterator.current;
      }
    }
  }
}
