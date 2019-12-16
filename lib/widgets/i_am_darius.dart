import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class IAmDarius extends StatelessWidget {
  final String title = "سلام دنیا!";
  final String description = "خوش آمدید. من داریوشم!"
      "\n"
      "وب سایت تحت توسعه است و این پروسه ممکنه یه مقدار طولانی بشه . چون فلاتر هم تحت توسعه است و ممکنه در هر بروزرسانی sdk تغییر کنه و کلا یه چیز دیگه بشه!"
      "\n"
      "اگر نظری داشتید لطفا از طریق Email با من در تماس باشید"
      "\n";

  final String email = "Dariush.fathe[@]gmail.com";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description,
            textDirection: TextDirection.rtl,
            style: TextStyle(height: 2),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(25),
                right: Radius.circular(25),
              ),
            ),
            child: Text(
              email,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
