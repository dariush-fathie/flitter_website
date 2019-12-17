import 'package:flitter_website/routing/routes.dart';
import 'package:flitter_website/view/home/home_view.dart';
import 'package:flitter_website/view/management/ManagementView.dart';
import 'package:flitter_website/view/start_up/StartUp.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _internalGenerator(HomeView());
    case ManagementRoute:
      return _internalGenerator(ManagementView());
    case StartupRoute:
      return _internalGenerator(StartUp());
    default:
      throw Exception('invalid route name(${settings.name})');
  }
}

MaterialPageRoute _internalGenerator(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
