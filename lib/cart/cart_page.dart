import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foods_now/cart/components/body.dart';

class CartPage extends StatelessWidget {
  static String routeName ="/carts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child:const Icon(Icons.arrow_back_ios),
        ),
        title:const Text("Cart Details"),
      ),
      body: Body(),
    );
  }
}
