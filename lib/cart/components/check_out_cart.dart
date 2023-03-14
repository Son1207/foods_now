import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOutCart extends StatelessWidget {
  double sum;
  CheckOutCart({required this.sum});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20,color: Colors.green),
            ),
            onPressed: (){},
            child: Text("Sum:${sum}",
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20,color: Colors.green),
            ),
            onPressed: (){},
            child: Text('Check Out'.toUpperCase(),
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
