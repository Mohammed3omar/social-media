import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:social_media/main.dart';
import 'package:social_media/screens/home_screen.dart';
import '../service/auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    {
      Future.delayed(Duration(seconds: 6), () {
        if (Auth.instance.user == null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(title: 'hi home',),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(0, 0, 0, 0)
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('assets/animation/114334-hello-apple.json'),
  ]),
        ),
      ),
    );
  }
}

