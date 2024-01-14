import 'package:book_town/common_contant/drawer.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  GlobalKey<ScaffoldState> _scffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Code of Appbar
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xffEA091F),
        title: Text(
          'Cart',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
      ),

      key: _scffoldkey,
      drawer: DreawerAppbar(),
    );
  }
}
