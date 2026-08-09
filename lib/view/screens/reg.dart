import 'package:flutter/material.dart';
import '../custom_widget/text_field.dart';
import 'login.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Create Account",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          Text(
            "Sing up to get started",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          CustomTextField(email: name, hint: "Full Name"),
          CustomTextField(email: email, hint: "Email"),
          CustomTextField(email: phone, hint: "Phone Number"),
          CustomTextField(email: password, hint: "Password"),
          CustomTextField(email: password, hint: "Confirm Password"),

          InkWell(
            onTap: () {
              //log("===");
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text("Already Registered?"),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                  //log("===");
                },
                child: Text("Sign in", style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
