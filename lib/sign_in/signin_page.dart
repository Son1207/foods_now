import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class SignInPage extends StatelessWidget {
  static String routeName="/sign_in";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset:false ,
      body: Body(),
    );
  }
}
