import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_bloc/api_services/cubit/product/product_cubit.dart';
import 'package:news_bloc/routs/routes.dart';
import 'package:news_bloc/routs/routes_name.dart';
import 'package:news_bloc/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocProvider(create: (_) => ProductCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: Routes.onGenrateRoute,
        initialRoute: RoutesName.splashscreen,
      ),
    );
  }
}


