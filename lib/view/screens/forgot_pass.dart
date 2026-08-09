import 'package:ecommerce_app/view/custom_widget/text.dart';
import 'package:ecommerce_app/view/custom_widget/text_field.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController email = TextEditingController();
  bool phone = true;

  int? mLine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://thumbs.dreamstime.com/b/forgot-password-vector-icon-white-background-277222632.jpg",
            height: 150,
            width: double.infinity,
          ),
          SizedBox(height: 50),
          CustomText(
            text: "Forgot password?",
            fSize: 30,
            fWeight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          CustomText(
            text:
                "Enter the email or phone number associated with your account.",
            fSize: 17,
          ),
          SizedBox(height: 10),
          // chatgpt
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => phone = true),
                      child: Container(
                        decoration: BoxDecoration(
                          color: phone ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: phone ? Border.all(color: Color(0xFFFF5722), width: 1.5) : null,
                        ),
                        alignment: Alignment.center,
                        child: CustomText(
                          text: "Phone",
                          fWeight: FontWeight.bold,
                          color: phone ? Colors.deepOrange : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => phone = false),
                      child: Container(
                        decoration: BoxDecoration(
                          color: !phone ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: !phone
                              ? Border.all(color: Colors.deepOrange, width: 1.5)
                              : null,
                        ),
                        alignment: Alignment.center,
                        child: CustomText(
                          text: "Email",
                          fWeight: FontWeight.bold,
                          color: !phone ? Colors.deepOrange : Colors.black,
                          fSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomTextField(
                email: email,
                hint: phone ? "Phone Number" : "Email Address",
                prefixIcon: Icon(phone ? Icons.phone : Icons.email),
              ),
            ),
          ),

          InkWell(
            onTap: () {},
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomText(
                      text: "Send OTP",
                      fSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
