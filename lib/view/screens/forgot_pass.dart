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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            text: "Enter the email or phone number associated with your account.",
            fSize: 17,
          ),
          SizedBox(height: 10),
          // chatgpt
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => phone = true),
                      child: Container(
                        decoration: BoxDecoration(
                          color: phone ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: phone
                              ? Border.all(
                                  color: const Color(0xFFFF5722),
                                  width: 1.5,
                                )
                              : null,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Phone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: phone
                                ? const Color(0xFFFF5722)
                                : Colors.black,
                          ),
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
                              ? Border.all(
                                  color: const Color(0xFFFF5722),
                                  width: 1.5,
                                )
                              : null,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: !phone
                                ? const Color(0xFFFF5722)
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child:
              Text(
                phone ? 'Phone Number' : 'Email Address',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              keyboardType: phone
                  ? TextInputType.phone
                  : TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  phone ? Icons.call_outlined : Icons.email_outlined,
                  color: Colors.black,
                ),

                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0xFFFF5722)),
                ),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Send OTP",
                      style: TextStyle(color: Colors.white, fontSize: 15),
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
