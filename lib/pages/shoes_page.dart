import 'package:flutter/material.dart';
import 'package:shoesapp/widgets/custom_widgets.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          CustomAppbar(textAppbar: 'For you',),
          ShoesSizePreview(),
        ],
      ),
    );
  }
}