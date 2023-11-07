import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LogIn.dart';
import 'PrivatePolicy.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool? _isChecked = true;

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value;
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
                    "Create an account",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF3A3A3A),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Complete the sign up process to get started",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Full Name",
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
                        hintText: 'Ken Nwaeze',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFFCFCFCF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Phone Number",
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
                        hintText: '000000000000',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFFCFCFCF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01),
              child: Row(
                children: [
                  Container(
                    child: Checkbox(
                      value: _isChecked ?? false,
                      onChanged: (bool? value) {
                        _toggleCheckbox(value);
                      },
                      activeColor: Colors.blue,
                      checkColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: Color(
                              0xFF006CEC), // Цвет границ Checkbox в неактивном состоянии
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PrivatePolicy()),
                          );
                        },
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'By ticking this box, you agree to our  ',
                                style: GoogleFonts.roboto(
                                    color: Color(0xFFA7A7A7),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Terms and conditions and private policy',
                                style: GoogleFonts.roboto(
                                    color: Color(0xFFEBBC2E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                      onTap: _isChecked == true
                          ? () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LogIn(),
                                ),
                              );
                            }
                          : null,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xFF0560FA)),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.roboto(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
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
