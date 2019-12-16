import 'package:flitter_website/widgets/SizeLimiter/WidthLimiter.dart';
import 'package:flitter_website/widgets/i_am_darius.dart';
import 'package:flitter_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:flitter_website/widgets/shape/Line.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidthLimiter(
        1200,
        Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IAmDarius(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
