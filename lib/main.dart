// @dart=2.9
import 'package:flutter/material.dart';
import 'package:study_material2/page/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'Onboarding Example';

  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const OnBoardingPage(),
  );
}