import 'package:flutter/material.dart';
import 'package:news_bloc/routs/routes_name.dart';
import 'package:news_bloc/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, RoutesName.homescreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset('assets/img.png'),
      ),
    );
  }
}
