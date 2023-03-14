import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({Key? key}) : super(key: key);

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            emailTextFormField(),
            const SizedBox(height: 30,),
            passwordTextFormField(),
            const SizedBox(height: 30,),
            conformTextFormField(),
            const SizedBox(height: 30,),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () async{
                  Navigator.pop(context,email.text);
                },
                style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                child:const Text("Log out",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
            ),

            const SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding:const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                    ),
                    child: Image.asset("assets/icons/icon_facebook.svg.png"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding:const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                    ),
                    child: Image.asset("assets/icons/icon_google.png"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding:const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                    ),
                    child: Image.asset("assets/icons/icon_twitter.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  TextFormField emailTextFormField(){
    return TextFormField(
      controller: email,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)
      ),
    );
  }

  TextFormField passwordTextFormField(){
    return  TextFormField(
      decoration: const InputDecoration(
          border:  OutlineInputBorder(),
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)
      ),
    );
  }
  TextFormField conformTextFormField(){
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Re-enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)
      ),
    );
  }
}
