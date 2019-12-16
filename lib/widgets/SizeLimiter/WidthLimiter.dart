import 'package:flutter/cupertino.dart';

class WidthLimiter extends StatelessWidget {
  final double width;
  final Widget child;

  const WidthLimiter(this.width, this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: width),
        child: child,
      ),
    );
  }
}
