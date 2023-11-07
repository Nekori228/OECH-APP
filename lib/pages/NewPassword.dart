import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home.dart';

class NewPassword extends StatefulWidget {
  NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obscureText = true;
  bool _obscureText2 = true;
  bool _passwordsMatch = false;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleObscureText2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }


  void _checkPasswords() {
    setState(() {
      _passwordsMatch = passwordController.text == confirmPasswordController.text;
    });
  }

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Password",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF3A3A3A),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Enter new password",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "New Password",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: _obscureText,
                      onChanged: (value) {
                        _checkPasswords();
                      },
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
                  SizedBox(height: 20),
                  Text(
                    "New Password Again",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      controller: confirmPasswordController,
                      obscureText: _obscureText2,
                      onChanged: (value) {
                        _checkPasswords();
                      },
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
                        suffixIcon: IconButton(
                          icon: _obscureText
                              ? ImageIcon(
                            AssetImage('assets/icons/eye_close.png'),
                          )
                              : ImageIcon(
                            AssetImage('assets/icons/eye_open.png'),
                          ),
                          onPressed: _toggleObscureText2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
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
                      onTap: _passwordsMatch
                          ? () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      }
                          : null,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF0560FA),
                        ),
                        child: Center(
                          child: Text(
                            "Log in",
                            style: GoogleFonts.roboto(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
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
