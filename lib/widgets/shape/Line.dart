import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      margin: EdgeInsets.only(top: 4),
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade200,
    );
  }
}
