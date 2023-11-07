import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

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


  bool _isDarkModeEnabled = false; // Флаг для отслеживания режима темной темы

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkModeEnabled =
          value; // Изменяем флаг в зависимости от состояния Switch
    });
  }

  String _originalText = '222222!';
  String _text = '';
  bool _isTextVisible = true;

  @override
  void initState() {
    super.initState();
    _text = _originalText;
  }

  void _toggleText() {
    setState(() {
      // Проверяем, нужно ли вернуть исходный текст или заменить буквы на "*"
      _text = _text == _originalText
          ? _text.replaceAll(RegExp('[a-zA-Z]'), '*')
          : _originalText;
    });
  }

  void _toggleTextVisibility() {
    setState(() {
      _isTextVisible = !_isTextVisible; // Инвертируем флаг видимости текста
    });
  }

  void _handleButtonPress() {
    _toggleTextVisibility();
    _toggleText();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Используем собственную тему для настройки цвета фона Scaffold
      data: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: _isDarkModeEnabled
              ? Colors.grey[900]
              : Colors.white, // Цвет фона AppBar
        ),
        scaffoldBackgroundColor:
            _isDarkModeEnabled ? Colors.grey[900] : Colors.white,
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          title: Text(
            'Profile',
            style: GoogleFonts.roboto(
                color: Color(0xFFA7A7A7),
                fontSize: 18,
                fontWeight: FontWeight.w800),
          ),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/photo/men.png'),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ken Nwaeze',
                          style: GoogleFonts.roboto(
                              color: Color(0xFF3A3A3A),
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        Row(
                          children: [
                            Text(
                              'Current balance: ',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFF3A3A3A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              _text,
                              style: GoogleFonts.roboto(
                                  color: Color(0xFF0560FA),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      icon: _isTextVisible
                          ? ImageIcon(
                              AssetImage('assets/icons/eye_close.png'),
                            )
                          : ImageIcon(
                              AssetImage('assets/icons/eye_open.png'),
                            ),
                      onPressed: _handleButtonPress,
                      iconSize: 48,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Enable dark Mode',
                      style: GoogleFonts.roboto(
                          color: Color(0xFF3A3A3A),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Switch(
                      value: _isDarkModeEnabled,
                      onChanged: _toggleDarkMode,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Действие при нажатии кнопки
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Цвет фона кнопки
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Острые углы
                    ),
                    elevation: 5, // Тень кнопки
                  ),
                  child: Container(
                    width: double.infinity, // Ширина контейнера
                    height: 70, // Высота контейнера
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/profile2.svg',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Edit Profile',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFF3A3A3A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Name, phone no, address, email ...',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFFA7A7A7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Действие при нажатии кнопки
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Цвет фона кнопки
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Острые углы
                    ),
                    elevation: 5, // Тень кнопки
                  ),
                  child: Container(
                    width: double.infinity, // Ширина контейнера
                    height: 70, // Высота контейнера
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/profile2.svg',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Statements & Reports',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFF3A3A3A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Download transaction details, orders, deliveries',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFFA7A7A7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Действие при нажатии кнопки
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Цвет фона кнопки
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Острые углы
                    ),
                    elevation: 5, // Тень кнопки
                  ),
                  child: Container(
                    width: double.infinity, // Ширина контейнера
                    height: 70, // Высота контейнера
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/profile2.svg',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Notification Settings',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFF3A3A3A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'mute, unmute, set location & tracking setting',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFFA7A7A7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Действие при нажатии кнопки
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Цвет фона кнопки
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Острые углы
                    ),
                    elevation: 5, // Тень кнопки
                  ),
                  child: Container(
                    width: double.infinity, // Ширина контейнера
                    height: 70, // Высота контейнера
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/profile2.svg',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Card & Bank account settings',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFF3A3A3A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'change cards, delete card details',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFFA7A7A7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Действие при нажатии кнопки
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Цвет фона кнопки
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Острые углы
                    ),
                    elevation: 5, // Тень кнопки
                  ),
                  child: Container(
                    width: double.infinity, // Ширина контейнера
                    height: 70, // Высота контейнера
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/profile2.svg',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Referrals',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFF3A3A3A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'check no of friends and earn',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFFA7A7A7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Действие при нажатии кнопки
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Цвет фона кнопки
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Острые углы
                    ),
                    elevation: 5, // Тень кнопки
                  ),
                  child: Container(
                    width: double.infinity, // Ширина контейнера
                    height: 70, // Высота контейнера
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/profile2.svg',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'About Us',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFF3A3A3A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'know more about us, terms and conditions',
                              style: GoogleFonts.roboto(
                                  color: Color(0xFFA7A7A7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
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
      ),
    );
  }
}
