import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LogIn.dart';
import 'OTPVerification.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  bool isEmailValid(String email) {
    String emailRegex = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
    RegExp regex = RegExp(emailRegex);
    return regex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forgot Password",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF3A3A3A),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Enter your email address",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Email Address",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      controller: emailController,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFA7A7A7), width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFA7A7A7), width: 1.0),
                        ),
                        hintText: '***********@mail.com',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFFCFCFCF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 47,
                    child: GestureDetector(
                      onTap: () {
                        String email = emailController.text;
                        if (isEmailValid(email)) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OTPVerification(number: '',),
                            ),
                          );
                        } else {
                          // Выведите сообщение об ошибке, если почта некорректна
                          print('Некорректный адрес электронной почты');
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xFF0560FA)),
                        child: Center(
                          child: Text(
                            "Send OTP",
                            style: GoogleFonts.roboto(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Remember password? Back to',
                        style: GoogleFonts.roboto(
                            color: Color(0xFFA7A7A7),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LogIn()),
                          );
                        },
                        child: Text(
                          'Sign in',
                          style: GoogleFonts.roboto(
                              color: Color(0xFF0560FA),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
