import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foods_now/model/products.dart';
import 'package:foods_now/model/carts.dart';

class AddProductToCart extends StatefulWidget {
  Products product;

  AddProductToCart({required this.product});

  @override
  State<AddProductToCart> createState() => _AddProductToCartState();
}

class _AddProductToCartState extends State<AddProductToCart> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: (){
          Cart cart =Cart();
          cart.addProductToCart(widget.product);
          print(cart.getCart().length.toString());
          Fluttertoast.showToast(
            msg: "Add to cart",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0
          );
        },
        style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.red)),
        child:const Text("Add to cart",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
      ),
    );
  }
}
