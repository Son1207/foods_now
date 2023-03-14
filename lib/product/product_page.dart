import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foods_now/model/products.dart';
import 'package:foods_now/product/components/body.dart';


class ProductPage extends StatelessWidget {
  static String routeName ="/details";

  @override
  Widget build(BuildContext context) {

    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title:const Text("Details"),
      ),
      body: Body(product: arguments.product),
    );
  }

}

class ProductDetailsArguments{
  final Products product;

  ProductDetailsArguments({required this.product});
}
