import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Profile.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _container1Color = Color(0xFFF2F2F2);
  Color _container2Color = Color(0xFFF2F2F2);
  Color _container3Color = Color(0xFFF2F2F2);
  Color _container4Color = Color(0xFFF2F2F2);

  Color _textColor1 = Color(0xFF0560FA);
  Color _textColor2 = Color(0xFF0560FA);
  Color _textColor3 = Color(0xFF0560FA);
  Color _textColor4 = Color(0xFF0560FA);

  Color _smalltextColor1 = Color(0xFF3A3A3A);
  Color _smalltextColor2 = Color(0xFF3A3A3A);
  Color _smalltextColor3 = Color(0xFF3A3A3A);
  Color _smalltextColor4 = Color(0xFF3A3A3A);

  Color _SvgColor1 = Color(0xFF0560FA);
  Color _SvgColor2 = Color(0xFF0560FA);
  Color _SvgColor3 = Color(0xFF0560FA);
  Color _SvgColor4 = Color(0xFF0560FA);

  void _changeColor(int containerNumber) {
    setState(() {
      _resetColors();
      switch (containerNumber) {
        case 1:
          _container1Color = Color(0xFF0560FA);
          _textColor1 = Colors.white;
          _smalltextColor1 = Color(0xFF3A3A3A);
          _SvgColor1 = Color(0xFFFFFFFF);
          break;
        case 2:
          _container2Color = Color(0xFF0560FA);
          _textColor2 = Colors.white;
          _smalltextColor2 = Color(0xFF3A3A3A);
          _SvgColor2 = Color(0xFFFFFFFF);
          break;
        case 3:
          _container3Color = Color(0xFF0560FA);
          _textColor3 = Colors.white;
          _smalltextColor3 = Color(0xFF3A3A3A);
          _SvgColor3 = Color(0xFFFFFFFF);
          break;
        case 4:
          _container4Color = Color(0xFF0560FA);
          _textColor4 = Colors.white;
          _smalltextColor4 = Color(0xFF3A3A3A);
          _SvgColor4 = Color(0xFFFFFFFF);
          break;
        default:
          break;
      }
    });
  }

  void _resetColors() {
    _container1Color = Color(0xFFF2F2F2);
    _container2Color = Color(0xFFF2F2F2);
    _container3Color = Color(0xFFF2F2F2);
    _container4Color = Color(0xFFF2F2F2);
    _textColor1 = Color(0xFF0560FA);
    _textColor2 = Color(0xFF0560FA);
    _textColor3 = Color(0xFF0560FA);
    _textColor4 = Color(0xFF0560FA);
    _smalltextColor1 = Color(0xFF3A3A3A);
    _smalltextColor2 = Color(0xFF3A3A3A);
    _smalltextColor3 = Color(0xFF3A3A3A);
    _smalltextColor4 = Color(0xFF3A3A3A);
    _SvgColor1 = Color(0xFF0560FA);
    _SvgColor2 = Color(0xFF0560FA);
    _SvgColor3 = Color(0xFF0560FA);
    _SvgColor4 = Color(0xFF0560FA);
  }

  bool _isHomePressed = false;
  bool _isSearchPressed = false;
  bool _isNotificationsPressed = false;
  bool _isSettingsPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              SizedBox(height: 30),
              SizedBox(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFCFCFCF),
                    hintText: 'Search services',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFCFCFCF),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFCFCFCF),
                      ),
                    ),
                    hintStyle: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 95,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/photo/bag_cont1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello Ken",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "We trust you are having a great time",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Spacer(),
                      SvgPicture.asset('assets/icons/ball.svg'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Special for you",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFEC8000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/icons/arrow.svg')
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 170,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('assets/photo/bag_cont2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 70, 0),
                          child: Text(
                            "Tech Meetup coming soon",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 170,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('assets/photo/bag_cont3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "What would you like to do",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF0560FA),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _changeColor(1);
                    },
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: _container1Color,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            SvgPicture.asset(
                              'assets/icons/ima_cont1.svg',
                              color: _SvgColor1,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Customer Care',
                              style: GoogleFonts.roboto(
                                  color: _textColor1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today',
                              style: GoogleFonts.roboto(
                                  color: _smalltextColor1,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      _changeColor(2);
                    },
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: _container2Color,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            SvgPicture.asset(
                              'assets/icons/ima_cont2.svg',
                              color: _SvgColor2,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Send a package',
                              style: GoogleFonts.roboto(
                                  color: _textColor2,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Request for a driver to pick up or deliver your package for you',
                              style: GoogleFonts.roboto(
                                  color: _smalltextColor2,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _changeColor(3);
                    },
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: _container3Color,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            SvgPicture.asset(
                              'assets/icons/ima_cont3.svg',
                              color: _SvgColor3,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Fund your wallet',
                              style: GoogleFonts.roboto(
                                  color: _textColor3,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today',
                              style: GoogleFonts.roboto(
                                  color: _smalltextColor3,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      _changeColor(4);
                    },
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: _container4Color,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            SvgPicture.asset(
                              'assets/icons/ima_cont4.svg',
                              color: _SvgColor4,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Book a rider',
                              style: GoogleFonts.roboto(
                                  color: _textColor4,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Search for available rider within your area',
                              style: GoogleFonts.roboto(
                                  color: _smalltextColor4,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: BottomAppBar(
          color: Colors.white,
          elevation: 0,
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: SvgPicture.asset('assets/icons/house.svg'),
                    color: _isHomePressed ? Color(0xFF0560FA) : null,
                    onPressed: () {
                      setState(() {
                        _isHomePressed = !_isHomePressed;
                        _isSearchPressed = false;
                        _isNotificationsPressed = false;
                        _isSettingsPressed = false;
                      });
                      print('Home button pressed');
                    },
                  ),
                  Text(
                    'Home',
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: SvgPicture.asset('assets/icons/wallet.svg'),
                    color: _isSearchPressed ? Color(0xFF0560FA) : null,
                    onPressed: () {
                      setState(() {
                        _isHomePressed = false;
                        _isSearchPressed = !_isSearchPressed;
                        _isNotificationsPressed = false;
                        _isSettingsPressed = false;
                      });
                      print('Search button pressed');
                    },
                  ),
                  Text(
                    'Wallet',
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset('assets/icons/smart.svg'),
                    color: _isNotificationsPressed ? Color(0xFF0560FA) : null,
                    onPressed: () {
                      setState(() {
                        _isHomePressed = false;
                        _isSearchPressed = false;
                        _isNotificationsPressed = !_isNotificationsPressed;
                        _isSettingsPressed = false;
                      });
                      print('Notifications button pressed');
                    },
                  ),
                  Text(
                    'Track',
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset('assets/icons/profile.svg'),
                    color: _isSettingsPressed ? Color(0xFF0560FA) : null,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ),
                      );
                      setState(() {
                        _isHomePressed = false;
                        _isSearchPressed = false;
                        _isNotificationsPressed = false;
                        _isSettingsPressed = !_isSettingsPressed;
                      });
                      print('Settings button pressed');
                    },
                  ),
                  Text(
                    'Profile',
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
