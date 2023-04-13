import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foods_now/homepage/homepage.dart';

class CheckOutScreen extends StatefulWidget {
  double sum;

  CheckOutScreen({required this.sum});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  PaymentType _paymentType = PaymentType.cash;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor: Colors.blue, // đặt màu nền cho nút
                ),
                onPressed: (){},
                child: Text("The total amount: ${widget.sum}",
                  style: const TextStyle(fontSize: 18,color: Colors.white),
                ),
              ),

            ),

          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Payment Options',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ListTile(
          leading: Radio(
            value: PaymentType.cash,
            groupValue: _paymentType,
            onChanged: (PaymentType? value) {
              setState(() {
                _paymentType = value!;
              });
            },
          ),
          title: const Text('Cash on Delivery'),
        ),
        ListTile(
          leading: Radio(
            value: PaymentType.creditCard,
            groupValue: _paymentType,
            onChanged: (PaymentType? value) {
              setState(() {
                _paymentType = value!;
              });
            },
          ),
          title: const Text('Credit Card'),
        ),
        ListTile(
          leading: Radio(
            value: PaymentType.paypal,
            groupValue: _paymentType,
            onChanged: (PaymentType? value) {
              setState(() {
                _paymentType = value!;
              });
            },
          ),
          title: const Text('PayPal'),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, HomePage.routeName);
            Fluttertoast.showToast(
                msg: "Payment success",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },
          style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.red)),
          child:const Text("Payment Now",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
      ],
    );
  }
}


enum PaymentType {
  cash,
  creditCard,
  paypal,
}

