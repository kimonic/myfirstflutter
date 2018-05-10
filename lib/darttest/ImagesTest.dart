import 'package:flutter/material.dart';

//class ImageDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从URL地址获取图像'),
//      ),
//      body: new Center(
//          child: new Container(
//        decoration: new BoxDecoration(image: new (image: null)),
//      )
////        new Image.network(
////          'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
////          scale: 2.0,
////        ),
//          ),
//    );
//  }
//}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('从本地获取图像'),
      ),
      body: new Center(
        child: new Container(
            child: new Image.asset(
          'assets/test1.png',
          scale: 2.0,
        )
//        new DecoratedBox(
//            decoration: new BoxDecoration(
//          image: new DecorationImage(image: new AssetImage('test1.png')),
//        )
            ),
      ),

//          child: new DecoratedBox(
//              decoration: new BoxDecoration(
//                image: new DecorationImage(image: new AssetImage('assets/test1.png')),
//              ))
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new ImageDemo(),
    ),
  );
}

//import 'package:flutter/material.dart';
//
//class ImageDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从本地获取图像'),
//      ),
//      body: new Center(
//          child: new Container(
//              decoration: new BoxDecoration(
//                backgroundImage: new BackgroundImage(
//                  image: new AssetImage('images/flutter.jpeg'),
//                ),
//              )
//          )
//      ),
//    );
//  }
//}
//
//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter教程',
//      home: new ImageDemo(),
//    ),
//  );
//}
