import 'package:flitter_website/locator.dart';
import 'package:flitter_website/routing/routes.dart';
import 'package:flitter_website/services/navigation-service.dart';
import 'package:flitter_website/widgets/shape/Line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final Widget space = SizedBox(
    width: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Flitter.ir"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _NavItem("مدیریت", ManagementRoute),
                  space,
                  _NavItem("کسب و کار", StartupRoute),
                  space,
                  _NavItem("صفحه اصلی", HomeRoute),
                ],
              ),
            ],
          ),
        ),
        SimpleLine(),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;
  final String routeName;

  const _NavItem(this.title, this.routeName);

  @override
  Widget build(BuildContext context) {
    /* return Center(
      child: Container(
        padding: EdgeInsets.only(
          left: 4,
          right: 4,
          top: 2,
          bottom: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(25),
            right: Radius.circular(25),
          ),
          border: Border.all(
            width: 1,
            color: Colors.grey,
            style: BorderStyle.solid,
          ),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );*/

    return GestureDetector(
      child: Text(title),
      onTap: () => {getIt<NavigationService>().navigate(routeName)},
    );
  }
}
