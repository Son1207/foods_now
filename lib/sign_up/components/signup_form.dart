import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foods_now/model/user.dart';
import 'package:foods_now/model/utilities.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var email =TextEditingController();
  final password = TextEditingController();
  final conform = TextEditingController();

  final _fromKey = GlobalKey<FormState>();
  final _passKey =GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            emailTextFormField(),
            SizedBox(height: 30,),
            passwordTextFormField(),
            SizedBox(height: 30,),
            conformTextFormField(),
            SizedBox(height: 30,),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () async{
                  if(
                  _fromKey.currentState!.validate()){
                  Navigator.pop(context, User(username: email.text,password: conform.text));
                  }
                },
                style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                child:Text("Continue",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                    ),
                    child: Image.asset("assets/icons/icon_facebook.svg.png"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                    ),
                    child: Image.asset("assets/icons/icon_google.png"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
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
      keyboardType: TextInputType.emailAddress,
      decoration:const InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.email_outlined)
      ),
      /*
      validator: Utilities.validateEmail,
      onSaved: (value){
        setState(() {
          email.text=value;
        });
      },

       */

    );
  }

  TextFormField passwordTextFormField(){
    return TextFormField(
      key: _passKey,
      controller: password,
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)
      ),
    /*
      validator: (passwordKey){
        return Utilities.validatePassword(passwordKey);
      }

     */
    );
  }
  TextFormField conformTextFormField(){
    return TextFormField(
      controller: conform,
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration:const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Re-enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)
      ),
    /*
      validator:(conformPassword){
        var pass =_passKey.currentState?.value;
        return Utilities.conformPassword(conformPassword,pass);
      },
      onSaved: (value){
        setState(() {
          conform?.text =value;
        });
      },

     */
    );
  }



}


