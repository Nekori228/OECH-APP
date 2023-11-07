import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Carousel(),
    );
  }
}


class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController _pageController =
  PageController(viewportFraction: 1.0, initialPage: 0);

  void next() => _pageController.nextPage(
      duration: Duration(milliseconds: 500), curve: Curves.easeInOut);

  List<String> images = [
    "assets/photo/frame1.png",
    "assets/photo/frame2.png",
    "assets/photo/frame3.png"
  ];

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: PageView.builder(
                itemCount: images.length,
                pageSnapping: true,
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    activePage = page;
                  });
                },
                itemBuilder: (context, pagePosition) {
                  bool active = pagePosition == activePage;
                  return slider(images, pagePosition, active);
                }),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: indicators(images.length, activePage),
            ),
          ),
          Spacer(),
          activePage != 2
              ? Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: SizedBox(
                    height: 40,
                    width: 65,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Sign_up(),
                        //   ),
                        // );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xFF0560FA),
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Skip",
                            style: GoogleFonts.roboto(
                                color: Color(0xFF0560FA),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: SizedBox(
                    height: 40,
                    width: 65,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Sign_up(),
                        //   ),
                        // );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF0560FA)),
                        child: Center(
                          child: Text(
                            "Next",
                            style: GoogleFonts.roboto(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
              : Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 47,
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Sign_up(),
                      //   ),
                      // );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF0560FA)),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.roboto(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Already have an account? ',
                      style: GoogleFonts.roboto(
                          color: Color(0xFFA7A7A7),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: GoogleFonts.roboto(
                          color: Color(0xFF0560FA),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.network(images[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Color(0xFF0560FA) : Color(0xFFA7A7A7),
          shape: BoxShape.circle),
    );
  });
}