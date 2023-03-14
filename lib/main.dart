import 'package:flutter/material.dart';
import 'package:foods_now/cart/cart_page.dart';
import 'package:foods_now/homepage/homepage.dart';
import 'package:foods_now/product/product_page.dart';
import 'package:foods_now/sign_in/signin_page.dart';
import 'package:foods_now/sign_up/signup_page.dart';
import 'package:foods_now/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        SplashPage.routeName:(context) => SplashPage(),
        SignInPage.routeName: ((context)=>SignInPage()),
        SignUpPage.routeName: ((context)=>SignUpPage()),
        HomePage.routeName:(context) => HomePage(),
        ProductPage.routeName: ((context) => ProductPage()),
        CartPage.routeName: ((context)=>CartPage()),
      },
      home: SplashPage(),
    );
  }
}

