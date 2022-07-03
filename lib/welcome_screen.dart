import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:protrack_project/auth_screen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  welcomeScreenTimer(){
    Timer(Duration(seconds: 3), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginScreen()));
    });
  }

  void initState(){
    super.initState();
    welcomeScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("images/car_animation.json"),
          Text("Protrack App",style: TextStyle(
            fontFamily: "Jost-SemiBold.ttf",
            fontSize: 18
          ),)
        ],
      ),
    );
  }
}
