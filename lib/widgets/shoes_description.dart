import 'package:flutter/material.dart';

class ShoesDescription extends StatelessWidget {
  final String title;
  final String description;
  final bool fullScreen;

  ShoesDescription(
      {@required this.title,
      @required this.description,
      this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: (!this.fullScreen) ? 0.0 : 10.0,
      ),
      child: Container(
        width: double.infinity,
        height: (!this.fullScreen) ? 150.0 : 121.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _TitleText(title: title),
            SizedBox(
              height: 10.0,
            ),
            _DescriptionText(description: description),
          ],
        ),
      ),
    );
  }
}

class _DescriptionText extends StatelessWidget {
  _DescriptionText({
    @required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      this.description,
      style: TextStyle(
        color: Colors.black54,
        height: 1.6,
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  _TitleText({
    @required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      this.title,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
