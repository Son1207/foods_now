import 'package:flutter/material.dart';

class Categories{
  int id;
  String title;
  String image;

  Categories({
    required this.id,
    required this.title,
    required this.image,
  });

  static List<Categories> init(){
    List<Categories> data =[
      Categories(id:1, title: "Trà sen",image: "assets/images/tra_sen.jpeg"),
      Categories(id:2, title: "Cà phê Moka",image: "assets/images/ca_phe_moka.jpeg"),
      Categories(id:3, title: "Trà olong",image: "assets/images/tra_olong.jpeg"),
      Categories(id:4, title: "Cà phê Culi",image: "assets/images/ca_phe.jpeg"),
      Categories(id:5, title: "Cà phê Robusta",image: "assets/images/ca_phe_robusta.jpeg"),
      Categories(id:6, title: "Trà lài",image: "assets/images/tra_lai.jpeg"),
      Categories(id:7, title: "Trà đen",image: "assets/images/tra_den.jpeg"),
    ];
    return data;
  }
}