import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return navigationKey.currentState!.pushNamed(routeName);
  }

  void goBack() {
    return navigationKey.currentState!.pop();
  }
}
