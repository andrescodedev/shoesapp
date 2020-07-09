import 'package:flutter/material.dart';

class ShoesSizePreview extends StatelessWidget {
  const ShoesSizePreview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
      child: Container(
        width: double.infinity,
        height: 300.0,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: <Widget>[
            _ShoesWithShadow(),
          ],
        ),
      ),
    );
  }
}

class _ShoesWithShadow extends StatelessWidget {
  _ShoesWithShadow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          Positioned(child: _Shadow(),bottom: -20.0,left: 50.0,),
          Image(image: AssetImage('assets/images/azul.png'),),
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.0,
      //alignment: Alignment.centerRight,
      child: Container(
        width: 120.0,
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200.0),
          boxShadow: [
            BoxShadow(color: Color(0xffEAA14E),blurRadius: 40.0,offset: Offset(10.0,10.0)),
          ],
        ),
      ),
    );
  }
}