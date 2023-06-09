import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods_now/cart/cart_page.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child:TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Search product",
              prefixIcon: Icon(Icons.search)
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, CartPage.routeName);
          },
          child: Container(
            height: 40,
            width: 40,
            padding:const EdgeInsets.all(10),
            child:const Icon(Icons.shopping_cart_outlined),
          ),
        )
      ],
    );
  }
}


