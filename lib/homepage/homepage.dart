import 'package:flutter/cupertino.dart';
import 'package:foods_now/body.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  int selectIndex=0;
  static String routeName="/home_screen";

  @override
  Widget build(BuildContext context) {
    return const Body();
  }
}
