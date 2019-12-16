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
                  _NavItem("مدیریت"),
                  space,
                  _NavItem("کسب و کار"),
                  space,
                  _NavItem("صحفه اصلی"),
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

  const _NavItem(this.title);

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

    return Text(title);
  }
}
