import 'package:flitter_website/widgets/i_am_darius.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            PuzzleView(),
            SizedBox(
              height: 20,
            ),
            IAmDarius(),
          ],
        ),
      ),
    );
  }
}

class PuzzleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double puzzleHeight = MediaQuery.of(context).size.height - 200;
    return Container(
      height: puzzleHeight,
      color: Colors.orange,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 4,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 8,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                    margin: EdgeInsets.all(8),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
                      Row(children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black54,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.tealAccent,
                          ),
                        ),
                      ])
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
