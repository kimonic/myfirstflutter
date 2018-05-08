import 'package:flutter/material.dart';
import 'package:myfirstflutter/Counter.dart';
import 'package:myfirstflutter/CounterDisplay.dart';
import 'package:myfirstflutter/LoginTD.dart';
import 'package:myfirstflutter/MyButton.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Material 是UI呈现的“一张纸”
    return new Material(
      // Column is 垂直方向的线性布局.
      child: Column(
        children: <Widget>[
          new LoginTD(
            title: new Text(
              'Example title',
              style: Theme
                  .of(context)
                  .primaryTextTheme
                  .title,
            ),
          ),
          new Container(
              height: 100.0,
              decoration: new BoxDecoration(color: Colors.lightBlue[400]),
              child: new Center(
                child: new Text(
                  'Hello World!',
                  style: new TextStyle(
                      fontSize: 25.0,
                      color: Colors.white
                  ),

                ),
              )
          ),
          new Expanded(child: new MyButton()),
          new Counter(),
          new Counter1(),

//           new MyButton()

        ],
      ),
    );
  }

}
