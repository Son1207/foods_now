import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foods_now/sign_up/components/body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static String routeName="/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false ,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text("Sign Up",style: TextStyle(color: Colors.white),),
      ),
      body: const Body(),
    );
  }
}
