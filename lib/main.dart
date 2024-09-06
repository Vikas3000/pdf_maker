import 'package:flutter/material.dart';

import 'button_page.dart';
import 'main_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: Locale('hi', 'IN'),
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff00A19B)),
        useMaterial3: true,
      ),
      home: ButtonPage() ,
    );
  }
}

