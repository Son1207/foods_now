import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foods_now/homepage/components/fragment/home_fragment/home_fragment_categories.dart';
import 'package:foods_now/homepage/components/fragment/home_fragment/home_fragment_product.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const CategoriesStore(),
          ProductPopular(),
        ],
      ),
    );
  }
}
