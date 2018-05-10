import 'package:flutter/material.dart';

class Product {
  //构造函数??
  const Product({this.name});
  //内部常量
  final String name;
}

//接口回调???
typedef void CartChangedCallback(Product product, bool inCart);

//相当于listview的item???
class ShoppingListItem extends StatelessWidget {
  //构造函数??
  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : product = product,
        super(key: new ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  //返回颜色值
  Color _getColor(BuildContext context) {
    // The theme depends on the BuildContext because different parts of the tree
    // can have different themes.  The BuildContext indicates where the build is
    // taking place and therefore which theme to use.

    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  //返回文本样式
  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      //点击事件
      onTap: () {
        onCartChanged(product, !inCart);
      },
        //标题之前显示的小部件
      leading: new CircleAvatar(//圆形纯色区域
        backgroundColor: _getColor(context),//背景色
        child: new Text(product.name[0]),//显示文本,product中name文本的第一个字母
      ),
        //标题显示
      title: new Text(product.name, style: _getTextStyle(context)),
    );
  }
}