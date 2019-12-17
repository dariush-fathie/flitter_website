import 'package:flitter_website/locator.dart';
import 'package:flitter_website/routing/router.dart';
import 'package:flitter_website/routing/routes.dart';
import 'package:flitter_website/services/navigation-service.dart';
import 'package:flitter_website/widgets/SizeLimiter/WidthLimiter.dart';
import 'package:flitter_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({Key key}) : super(key: key);

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
              child: Navigator(
                key: getIt<NavigationService>().state,
                initialRoute: HomeRoute,
                onGenerateRoute: generateRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
