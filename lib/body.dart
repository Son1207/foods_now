import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foods_now/homepage/components/fragment/account_detail/account_detail.dart';

import 'package:foods_now/homepage/components/fragment/favorite_fragment.dart';
import 'package:foods_now/homepage/components/fragment/home_fragment.dart';
import 'package:foods_now/homepage/components/fragment/notification_fragment.dart';
import 'package:foods_now/homepage/components/home_header.dart';
import 'package:foods_now/menu_header.dart';
import 'package:foods_now/model/utilities.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var selectIndex = 0;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> screen =[
      const HomeDetail(),
      FavoriteDetail(Utilities.data),
      const NotificationDetail(),
      const AccountDetail(),

    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: flag? HomeHeader(): MenuHeader(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index){
          setState(() {
            selectIndex = index;
            if(selectIndex !=3){
              flag=true;
            }else{
              flag=false;
            }
          });
        },
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            screen[selectIndex]
          ],
        ),
      ),
    );
  }
}