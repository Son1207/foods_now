import 'dart:convert';
import 'package:foods_now/model/products.dart';
import 'package:http/http.dart' as http;
import 'package:quiver/strings.dart';

class Utilities{
  String url ="http://192.168.0.100:3000/api/food";
  static List<Products> data =[];

  Future<List<Products>> getProducts() async{
    var res= await http.get(Uri.parse(url));
    if(res.statusCode==200){
      var content =res.body;
      print(content.toString());
      var arr =json.decode(content)['food'] as List;

      return arr.map((e) => _fromJson(e)).toList();

    }
    //return [];
    return <Products>[];
  }

  Products _fromJson(Map<String,dynamic>item){
    return Products(
        id: item['id'],
        title: item['title'],
        description: item['description'],
        image: item['image'],
        price: double.parse(item['price']));
  }

  static String? validateEmail(String value){
    if(value.isEmpty){
      return "Please enter email";
    }

    RegExp regex= RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if(!regex.hasMatch(value))
      return "Enter Valid Email";
    else
      return null;
  }

  static String? validatePassword(String value){
    if(value.isEmpty)
    {
      return "Please enter password";
    }
    if(value.length<8){
      return "Password should be more than 8 character";
    }
  }
  static String? conformPassword(String value, String value2){
    if(!equalsIgnoreCase(value, value2))
      return "Comform password valid";
  }
}