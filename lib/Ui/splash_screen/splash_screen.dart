import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iq_sample_app/Ui/home_screen/home_screen.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';


class SplashScreen extends StatefulWidget {



  SplashScreen();
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
     Timer(
         Duration(seconds: 2),
             () => Navigator.of(context).pushReplacement(MaterialPageRoute(
             builder: (BuildContext context) =>
             HomeScreen())));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logo.png',width: 300.w,height: 300.w,fit: BoxFit.fill,),
      ),
    );
  }
}