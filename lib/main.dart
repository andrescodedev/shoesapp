import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/models/shoes_model.dart';
//import 'package:shoesapp/pages/shoes_detail_page.dart';
import 'package:shoesapp/pages/shoes_page.dart';

void main() {
  return runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => new ShoesModel(),
    ),
  ], child: MyApp()));
}

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
