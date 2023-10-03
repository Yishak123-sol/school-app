import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:school_app/util/widgets.dart';

class GettingStartedPage extends StatefulWidget {
  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  State<GettingStartedPage> createState() => _GettingStartedPageState();
}

class _GettingStartedPageState extends State<GettingStartedPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
      color: Color.fromARGB(255, 14, 78, 255),
    );

    const pageDecoration = PageDecoration(
      bodyTextStyle: bodyStyle,
      pageColor: Colors.transparent,
      imagePadding: EdgeInsets.only(top: 30),
      bodyAlignment: Alignment.topCenter,
      imageAlignment: Alignment.topCenter,
      bodyFlex: 0,
      imageFlex: 0,
      safeArea: 0,
    );

    final Orientation orientation = MediaQuery.of(context).orientation;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.transparent,
        pages: [
          PageViewModel(
            title: "",
            body: "ONE OF THE BEST SCHOOLS IN ADDIS ABABA",
            image: orientation == Orientation.portrait
                ? Image.asset(
                    'assets/images/dum.png',
                    height: 400,
                  )
                : null,
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "",
            body: "THE PLACE WHERE KNOWLEDGE FINDS YOU",
            image: orientation == Orientation.portrait
                ? Image.asset(
                    'assets/images/dum.png',
                    height: 400,
                  )
                : null,
            decoration: pageDecoration,
          ),
          PageViewModel(
            useScrollView: false,
            title: "",
            image: orientation == Orientation.portrait
                ? Image.asset(
                    'assets/images/dum.png',
                    height: 400,
                  )
                : null,
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const WidgetSpace(
                  space: 25,
                  child: Text(
                    'LOG IN AND EXPLORE OUT SCHOOL',
                    style: bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () async {
                    await Navigator.popAndPushNamed(
                      context,
                      'login',
                    );
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 36, 107, 253),
                          Color.fromARGB(255, 80, 137, 255)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      constraints: const BoxConstraints(
                        maxWidth: 250,
                      ),
                      child: const Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            decoration: pageDecoration,
          ),
        ],
        showSkipButton: false,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        showDoneButton: false,
        showNextButton: false,
        controlsMargin: const EdgeInsets.all(16),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(10.0, 10.0),
        ),
      ),
    );
  }
}
