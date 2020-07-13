import 'package:flutter/material.dart';

class OrangeButtom extends StatelessWidget {
  final String text;
  final double width;
  final bool enable;

  OrangeButtom({@required this.text, this.width = 30.0, this.enable = true});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: (enable) ? Colors.orange : Color(0xffFFC675),
      padding: EdgeInsets.symmetric(
        horizontal: this.width,
      ),
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10.0,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
