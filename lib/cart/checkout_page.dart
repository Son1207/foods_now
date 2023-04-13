import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foods_now/cart/component/body.dart';

class CheckOutPage extends StatelessWidget {
  static String routeName ="/check_out";

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
        title:const Text("Check Out"),
      ),
      body: Body(),
    );
  }
}
