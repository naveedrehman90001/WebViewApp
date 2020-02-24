import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kensa_international/webView.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  @override
  void initState() {
    Timer(Duration(seconds: 70), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => MyWebView()));
    });
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: deviceSize.height,
          decoration: BoxDecoration(
            gradient: new LinearGradient(
              // colors: [Color(0xFFdd9933), Color(0xFFd68d28)],
              colors: [
                Colors.green,
                Colors.greenAccent
              ],
              begin: Alignment.centerRight,
              end: new Alignment(-1.0, -1.0),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ScaleTransition(
                scale: animation,
                child: Container(
                  height: 100,
                  width: 100,
                  // color: Colors.green,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70.0),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('images/imglogo.png'),
                        fit: BoxFit.cover,
                      )),

                  // child: Image.asset('images/imglogo.png'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TypewriterAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "KENSA INTERNATIONAL",
                  ],
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      color: Colors.white,
                      letterSpacing: 2.0),
                  textAlign: TextAlign.start,
                  alignment:
                      AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
            ],
          ),
        ),
      ],
    ));
  }
}
