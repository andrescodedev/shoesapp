import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String textAppbar;
  CustomAppbar({this.textAppbar});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.only(top: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              textAppbar,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(Icons.search, size: 30.0,),
          ],
        ),
      ),
    );
  }
}