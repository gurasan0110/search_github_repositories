import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

extension ListenableExtension<T extends Listenable> on T {
  void listen(void Function() listener) {
    useEffect(() {
      addListener(listener);
      return () => removeListener(listener);
    }, []);
  }
}
