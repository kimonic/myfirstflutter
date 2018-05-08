import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutter/MyScaffold.dart';

void main() {
  runApp(new MaterialApp(
      title: 'My First Flutter!',
      home: new MyScaffold()
  ));
}

class LoginTD extends StatelessWidget {

  final Widget title;

  LoginTD({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 56.0,
      // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      margin: const EdgeInsets.only(top: 24.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //左右对称padding距离
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row( //水平方向线性布局
        //列表项的类型是widget
        children: <Widget>[
          //图片按钮
          new IconButton(
            icon: new Icon(Icons.menu), //使用系统默认图标
            onPressed: null, //null 会禁用button
            tooltip: 'Navition menu', //长按显示的文本内容
          ),
          //扩展子控件填充可用空间,宽度占满剩余可用空间,高度不确定
          new Expanded(child: title),
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: null,
            tooltip: 'search',
          )
        ],
      ),
    );
  }

}

