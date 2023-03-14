import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods_now/sign_in/components/signin_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                headerScreen(context),
                const SignInForm(),
                footerScreen(context),
              ],
            ),
          ),
        )
    );
  }

  Widget headerScreen(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.2,
      alignment: Alignment.bottomRight,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(200)),
        child: Image.asset("assets/images/nen_login_1.jpeg",),
      ),
    );
  }

  Widget footerScreen(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomLeft,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(200)),
        child: Image.asset("assets/images/nen_login_2.jpeg",),
      ),

    );
  }
}
