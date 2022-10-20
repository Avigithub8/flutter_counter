import 'package:flutter/material.dart';
import 'package:flutter_counter/home.dart';
import 'package:flutter_counter/utlis/helpers/route.dart';
//import 'package:flutter_counter/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // initialRoute: AppRoutes.signupScreen,
      // routes: AppRoutes.getRoutes(),
      // debugShowCheckedModeBanner: false,
    );
  }
}
