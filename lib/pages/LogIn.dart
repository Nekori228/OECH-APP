import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ForgotPassword.dart';
import 'SignUp.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool? _isChecked = true;

  void _toggleCheckbox(bool? newValue) {
    setState(() {
      _isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF3A3A3A),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Fill in your email and password to continue",
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
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      obscureText: _obscureText,
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
                        hintText: '**********',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFFCFCFCF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        suffixIcon: IconButton(
                          icon: _obscureText
                              ? ImageIcon(
                                  AssetImage('assets/icons/eye_close.png'),
                                )
                              : ImageIcon(
                                  AssetImage('assets/icons/eye_open.png'),
                                ),
                          onPressed: _toggleObscureText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01),
              child: Row(
                children: [
                  Checkbox(
                    value: _isChecked ?? false,
                    activeColor: Colors.blue,
                    checkColor: Colors.white,
                    onChanged: _toggleCheckbox,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xFF006CEC),
                      ),
                    ),
                  ),
                  Text(
                    'Remember password',
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.roboto(
                          color: Color(0xFF0560FA),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Spacer(),
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
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Log_in(),
                        //   ),
                        // );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xFF0560FA)),
                        child: Center(
                          child: Text(
                            "Log in",
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
                        'Already have an account? ',
                        style: GoogleFonts.roboto(
                            color: Color(0xFFA7A7A7),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
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
                  SizedBox(height: 30),
                  Text(
                    'or sign in using',
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Image.asset('assets/photo/google.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
