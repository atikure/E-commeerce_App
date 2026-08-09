
import 'package:flutter/material.dart';

import 'login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //log("===111===");
    timerFun();
    //log("===333===");
    super.initState();
  }
  Future<void> timerFun()async{
    await Future.delayed(Duration(seconds: 3)).then((v){
      //log("===222===");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR69li6sjc5mJIoDIp6AjlbwShapQzY6b4lGnUC2xVU_YJbT88VMBVeOunp&s=10")),
    );
  }
}
