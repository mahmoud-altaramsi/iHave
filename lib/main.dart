import 'package:flutter/material.dart';
import 'package:i_have/core/thems_App/them_Data.dart';

import 'featuer/product_display/home_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themDataApp().themData,
      home: const HomeApp(),
    );
  }
}
