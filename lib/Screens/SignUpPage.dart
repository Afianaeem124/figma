import 'package:figma/Screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'Screens/splash_screen.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void switchtologinpage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => loginpage()),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 255,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/header.png"),
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //SizedBox(width: 2), // Adjust spacing as needed
                    Container(
                      margin: const EdgeInsets.only(bottom: 70, right: 40),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: TextButton(
                        onPressed: switchtologinpage,
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Text(
                          "SIGN IN",
                          style: GoogleFonts.cambo(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Text(
              "New User? Get Started Now",
              style: GoogleFonts.cambo(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4F4F4F)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/Google Icon.png",
                    width: 40,
                    height: 26,
                  ),
                  Image.asset(
                    "assets/Facebook Icon.png",
                    width: 27,
                    height: 26,
                  ),
                  Image.asset(
                    "assets/TL.png",
                    width: 26,
                    height: 25,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/Line 1.png",
                    width: 179,
                  ),
                  Text(
                    "OR",
                    style: GoogleFonts.cambo(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4F4F4F)),
                  ),
                  Image.asset(
                    "assets/Line 2.png",
                    width: 179,
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    //color: Colors.blue,
                    child: Text(
                      "Email ID*",
                      style: GoogleFonts.cambo(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4F4F4F)),
                    ),
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 3, 26, 0),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  //labelText: "Email ID*",
                  labelStyle: GoogleFonts.cambo(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4F4F4F)),
                  //fillColor: Colors.deepPurpleAccent,
                  //filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    //color: Colors.blue,
                    child: Text(
                      "Password*",
                      style: GoogleFonts.cambo(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4F4F4F)),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 100),
                      //color: Colors.blue,
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.cambo(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4F4F4F)),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 3, 26, 0),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  //labelText: "Password*",
                  labelStyle: GoogleFonts.cambo(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4F4F4F)),
                  suffixIcon: ImageIcon(AssetImage(
                    "assets/Hide Icon.png",
                  )),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print(emailcontroller.text);
                print(passwordcontroller.text);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 356,
                height: 44,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                alignment: Alignment.center,
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.cambo(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Terms and Conditions | Privacy Policy",
                style: GoogleFonts.cambo(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4F4F4F)),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Image.asset("assets/footer.png"),
          ],
        ),
      ),
    );
  }
}
