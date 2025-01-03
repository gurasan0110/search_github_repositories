import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

extension ListenableExtension<T extends Listenable> on T {
  (T, R) select<R>(R Function(T listenable) selector) {
    final selectorResult = useListenableSelector(this, () => selector(this));
    return (this, selectorResult);
  }

  void listen(void Function(T listenable) listener) {
    void listenerThis() => listener(this);
    useEffect(() {
      addListener(listenerThis);
      return () => removeListener(listenerThis);
    }, []);
  }
}
