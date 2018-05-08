import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
//  @override
//  _CounterState createState() => new _CounterState();


  @override
  State createState() {
    print('--------825--------------');
    return new _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('8888888888888count:$_counter');
    return new Row(
      children: <Widget>[
        new Container(
          height: 80.0,
          decoration: new BoxDecoration(color: Colors.blue),
          child: new RaisedButton(
            onPressed: _increment,
            color: Colors.green,
            child: new Text(
              'Increment',
              style: new TextStyle(
                  fontSize: 30.0,
                  color: Colors.blue
              ),
            ),
          ),
        ),

        new Text(
          'count:$_counter',
          style: new TextStyle(fontSize: 30.0),
        )
      ],
    );
  }
}