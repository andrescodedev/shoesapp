import 'package:flutter/material.dart';
import 'package:shoesapp/pages/shoes_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes app',
      debugShowCheckedModeBanner: false,
      home: ShoesPage(),
    );
  }
}