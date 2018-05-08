import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int count;
  CounterDisplay({this.count});
  @override
  Widget build(BuildContext context) {
    print('------------Count:$count');
    return new Text('Count:$count');
  }

}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
        onPressed: onPressed,
        child: new Text('Increment')
    );
  }
}

class Counter1 extends StatefulWidget {
  //与下面的写法等效
//  @override
//  _CounterState createState() => new _CounterState();
  @override
  State createState() {
    print('----------------------');
    return new _CounterState();
  }
}

class _CounterState extends State<Counter1> {
  int _counter=0;

  void _increment() {
    //必须调用改方法才会触发视图重绘
    setState(() {
      _counter++;
      print(_counter);
    });

  }

  @override
  Widget build(BuildContext context) {
    print('方法未执行');
    return new Row(
      children: <Widget>[
        new CounterIncrementor(onPressed: _increment),
        new CounterDisplay(count: _counter)
      ],
    );
  }
}