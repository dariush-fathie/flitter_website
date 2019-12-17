import 'package:flitter_website/locator.dart';
import 'package:flitter_website/template/home_template.dart';
import 'package:flutter/material.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Vazir',
            ),
      ),
      home: HomeTemplate(),
    );
  }
}
