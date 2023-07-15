import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loginpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void switchloginpage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loginpage()));
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), switchloginpage);
    super.initState();
  }

  @override
  Widget build(context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/header.png"),
        Spacer(),
        Text(
          "ANGEL SURE",
          style: GoogleFonts.akayaTelivigala(
              fontSize: 36,
              fontWeight: FontWeight.w400,
              color: Color(0xff2F80ED)),
        ),
        Image.asset("assets/logo.png", width: 239, height: 298),
        Spacer(),
        Image.asset("assets/footer.png"),
      ],
    )));
  }
}
