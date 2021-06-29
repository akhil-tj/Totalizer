import 'package:cusat_cgpa_calculator/body_desktop.dart';
import 'package:cusat_cgpa_calculator/body_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ScreenTypeLayout(
          desktop: SingleChildScrollView(
            child: CalculatorBodyDesktop(),
          ),
          tablet: SingleChildScrollView(
            child: CalculatorBodyMobile(),
          ),
          mobile: SingleChildScrollView(
            child: CalculatorBodyMobile(),
          ),
        ),
      ),
    );
  }
}
