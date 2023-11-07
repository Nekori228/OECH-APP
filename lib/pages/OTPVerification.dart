import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'NewPassword.dart';

class OTPVerification extends StatefulWidget {
  final String number;

  const OTPVerification({Key? key, required this.number}) : super(key: key);

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  var phoneController = TextEditingController();
  var errorMsg = '';
  Timer timer = Timer(const Duration(seconds: 1), () {});
  int start = 120;
  var timerState = true;

  void startTimer() {
    if (start == 120) {
      timer = Timer.periodic(
        Duration(seconds: 1),
        (Timer timer) {
          if (start == 1) {
            setState(() {
              timer.cancel();
              start = 120;
              timerState = false;
            });
          } else {
            setState(() {
              start--;
            });
          }
        },
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  dynamic prefs;

  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "OTP Verification",
                style: GoogleFonts.roboto(
                    color: Color(0xFF3A3A3A),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Enter the 6 digit numbers sent to your email",
                style: GoogleFonts.roboto(
                    color: Color(0xFFA7A7A7),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                widget.number,
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              PinCodeTextField(
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                // obscuringCharacter: '•',
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(0),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: const Color(0xFFFFFFFF),
                  activeColor: const Color(0xFFFFFFFF),
                  selectedColor: Color(0xffEC8000),
                  selectedFillColor: Color(0xffEC8000),
                  inactiveFillColor: const Color(0xFFFFFFFF),
                  inactiveColor: const Color(0xffEC8000),
                ),
                animationDuration: const Duration(milliseconds: 250),
                backgroundColor: Colors.white,
                enableActiveFill: true,
                enablePinAutofill: true,
                // errorAnimationController: errorController,
                // controller: textEditingController,
                onCompleted: (v) {
                  prefs.setBool('isAuth', true);
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => NewPassword()),
                      (Route<dynamic> route) => false);
                },
                onChanged: (value) {
                  setState(() {
                    // currentText = value;
                  });
                },
                appContext: context,
              ),
              SizedBox(height: 10),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'If you didn’t receive code, ',
                        style: GoogleFonts.roboto(
                            color: Color(0xFFA7A7A7),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: 'Resend',
                        style: GoogleFonts.roboto(
                            color: Color(0xFF0560FA),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 47,
                child: GestureDetector(
                  onTap: () {
                    timerState = true;
                    setState(() {});
                    startTimer();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewPassword(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xFF0560FA)),
                    child: Center(
                      child: Text(
                        "Set New Password",
                        style: GoogleFonts.roboto(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
