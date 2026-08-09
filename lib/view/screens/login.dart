import 'dart:developer';
import 'package:ecommerce_app/view/custom_widget/text.dart';
import 'package:ecommerce_app/view/screens/reg.dart';
import 'package:flutter/material.dart';
import '../custom_widget/text_field.dart';
import 'forgot_pass.dart';
import 'home/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://coderangon.com/frontend/assets/images/logo/lgo.png"),
          CustomText(text: "Welcome Back!", fSize: 20,),
          CustomText(text: " Sign in here to continue shopping",fSize: 15,),
          CustomTextField(email: phone, hint: "Enter your phone number"),
          CustomTextField(email: password, hint: "Password"),
          Container(
            alignment: Alignment.centerRight,
            child: InkWell(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> RegScreen()));
                  //log("===");
                },
                child:
                InkWell(
                  onTap: (){
                    //log("===");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotScreen()));
                  },
                  child: Text("Forgotten password?", style: TextStyle(color: Colors.blue),
                  ),
                ),
            ),
          ),
          InkWell(
            onTap: (){
              if(phone.text == "01764641399" && password.text == "1234"){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home(index: 0,)));
              }
              else{
                log("Wrong Phone Number & Password");
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                Text("Wrong Phone Number & Password"),backgroundColor: Colors.blue,));
              }
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sign In",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text("Don't have an account?"),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RegScreen()));
                    //log("===");
                  },
                  child: Text("Sign Up", style: TextStyle(color: Colors.blue),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}

