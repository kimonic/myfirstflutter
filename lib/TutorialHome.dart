import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          onPressed: null,
          tooltip: 'Navigation Menu',
        ),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: null,
            tooltip: 'Search',
          ),
        ],
      ),
      body: new Center(
        child: new Text('世界你好!\nheheheheheh',
            style: new TextStyle(
              decorationColor: Colors.blue,
              fontSize: 30.0,
              color: Colors.red,//文字颜色
              wordSpacing: 50.0,//文字之间的空格间距,
              letterSpacing:10.0 ,//文字之间的间距
              textBaseline:TextBaseline.ideographic ,
              fontStyle: FontStyle.normal,//斜体,正常
              fontWeight: FontWeight.bold,//加粗
              height: 2.0,//行间距
              decorationStyle: TextDecorationStyle.wavy,
            )
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'add',
        child: new Icon(Icons.radio),
      ),
    );
  }

}