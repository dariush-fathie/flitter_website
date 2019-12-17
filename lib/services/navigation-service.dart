import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> state = GlobalKey<NavigatorState>();

  Future<dynamic> navigate(String route) {
    return state.currentState.pushNamed(route);
  }

  bool navigateUp() {
    return state.currentState.pop();
  }
}
