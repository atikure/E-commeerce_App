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
          Container(
            width: 150,
            height: 150,
            decoration:  BoxDecoration(
              color: Color(0xFFE8F5E9),
              shape: BoxShape.circle,
            ),
            child:  Icon(
              Icons.shopping_cart_outlined,
              size: 90,
              color: Color(0xFF2E7D32),
            ),
          ),
          SizedBox(height: 50),
          // Image.network(
          //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCvzXQokFJEu_UZIi-N0f2s7mpeKEeYgrT6aMOaY348A&s=10",
          //   height: 200,
          // ),
          CustomText(text: "Welcome Back!", fSize: 20),
          CustomText(text: " Sign in here to continue shopping", fSize: 15),
          CustomTextField(
            email: phone,
            hint: "Enter your phone number",
            prefixIcon: Icon(Icons.phone),
          ),
          CustomTextField(
            email: password,
            hint: "Password",
            prefixIcon: Icon(Icons.lock_outlined),
            suffixIcon: Icon(Icons.visibility_off_outlined),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> RegScreen()));
                //log("===");
              },
              child: InkWell(
                onTap: () {
                  //log("===");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotScreen()),
                  );
                },
                child: CustomText(
                  text: "Forgotten password?",
                  color: Colors.deepOrange,
                  fSize: 12,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (phone.text == "01764641399" && password.text == "1234") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(index: 0)),
                );
              } else {
                log("Wrong Phone Number & Password");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: CustomText(
                      text: "Wrong Phone Number & Password",
                      fSize: 15,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                );
              }
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              color: Colors.deepOrange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(text: "Sign In", fSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              CustomText(
                text: "Don't have an account?",
                fSize: 14,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegScreen()),
                  );
                  //log("===");
                },
                child: CustomText(
                  text: "Sign Up",
                  fSize: 15,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
