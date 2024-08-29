import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_bloc/api_services/cubit/news_cubit.dart';
import 'package:news_bloc/routs/routes_name.dart';
import 'package:news_bloc/screen/product/product_screen.dart';
import 'package:news_bloc/screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screen/home_screen.dart';

class Routes {

  static Route<dynamic> onGenrateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RoutesName.splashscreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen(),);

      case RoutesName.homescreen:
        return MaterialPageRoute(builder: (context) =>
            BlocProvider(
              create: (context) => NewsCubit(),
              child: HomeScreen(),
            ),);


      default :
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("No Routes Found"),),
          );
        },);
    }
  }
}