import 'package:flutter/material.dart';
import 'package:myfirstflutter/Product.dart';

class ShoppingList extends StatefulWidget {
  //构造函数
  ShoppingList({Key key, this.products}) : super(key: key);
  //product的list列表集合
  final List<Product> products;

  // The framework calls createState the first time a widget appears at a given
  // location in the tree. If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework will re-use the State object
  // instead of creating a new State object.
  //复用state对象??
  @override
  _ShoppingListState createState() => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  //product的set集合
  Set<Product> _shoppingCart = new Set<Product>();

  //处理字符改变状态,也就是改变控件的状态
  void _handleCartChanged(Product product, bool inCart) {
    //设置状态的方法,也就是刷新的方法
    setState(() {
      // When user changes what is in the cart, we need to change _shoppingCart
      // inside a setState call to trigger a rebuild. The framework then calls
      // build, below, which updates the visual appearance of the app.
      if (inCart)
        _shoppingCart.add(product);//将product添加到set集合中
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(//显示toolbar,navigationbar的容器??
      appBar: new AppBar(//顶部标题栏
        title: new Text('Shopping List'),
      ),
      body: new ListView(//内容主体
        padding: new EdgeInsets.symmetric(vertical: 8.0),//左右对称内边距8
        children: widget.products.map((Product product) {//包含的子控件
          return new ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),//奇数点击将导致product对象添加到set集合中否则反之
            onCartChanged: _handleCartChanged,//刷新状态的方法
          );
        }).toList(),//生成列表???
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'Shopping App',
    home: new ShoppingList(
      products: <Product>[
        new Product(name: '鸡蛋'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}