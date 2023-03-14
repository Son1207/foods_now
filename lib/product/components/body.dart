import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods_now/model/products.dart';
import 'package:foods_now/product/components/addtocart.dart';

class Body extends StatelessWidget {
  Products product;
  Body({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Image.asset(product.image),
          ),
          const SizedBox(height: 20,),
          Expanded(child: Text("Mô tả: ${product.description}"), flex: 1,),
          AddProductToCart(product: product,)
        ],
      ),
    );
  }
}
