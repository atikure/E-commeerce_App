import 'package:ecommerce_app/view/screens/details/details.dart';
import 'package:ecommerce_app/view/screens/forgot_pass.dart';
import 'package:ecommerce_app/view/screens/home/home.dart';
import 'package:ecommerce_app/view/screens/login.dart';
import 'package:ecommerce_app/view/screens/new_pass.dart';
import 'package:ecommerce_app/view/screens/order_page.dart';
import 'package:ecommerce_app/view/screens/otp.dart';
import 'package:ecommerce_app/view/screens/splash.dart';
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
      home: OrderScreen(),
    ) ;
  }
}