import 'package:flutter/cupertino.dart';

class CustomInheritedWidget extends InheritedWidget {
  const CustomInheritedWidget({required this.watchedData, required super.child, super.key});
  final Object watchedData;

  static CustomInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CustomInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(CustomInheritedWidget oldWidget) {
    final bool shouldNotify = oldWidget.watchedData != watchedData;
    return shouldNotify;
  }
}
