import 'package:ecommerce_app/view/screens/details/details.dart';
import 'package:ecommerce_app/view/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/view/screens/all_products/all_product.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(index: 0,),
    ) ;
  }
}