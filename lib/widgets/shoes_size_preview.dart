import 'package:flutter/material.dart';

class ShoesSizePreview extends StatelessWidget {
  const ShoesSizePreview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Container(
        width: double.infinity,
        height: 320.0,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: <Widget>[
            _ShoesWithShadow(),
            _ShoesSize(),
          ],
        ),
      ),
    );
  }
}

class _ShoesSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _BoxSize(
            size: 7,
          ),
          _BoxSize(
            size: 7.5,
          ),
          _BoxSize(
            size: 8,
          ),
          _BoxSize(
            size: 8.5,
          ),
          _BoxSize(
            size: 9,
          ),
          _BoxSize(
            size: 9.5,
          ),
        ],
      ),
    );
  }
}

class _BoxSize extends StatelessWidget {
  final double size;

  _BoxSize({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: (this.size == 9) ? Color(0xffF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          if (this.size == 9)
            BoxShadow(
              blurRadius: 10.0,
              color: Color(0xffF1A23A),
              offset: Offset(0.0, 5.0),
            )
        ],
      ),
      child: Center(
        child: Text(
          '${size.toString().replaceAll('.0', '')}',
          style: TextStyle(
            color: (this.size == 9) ? Colors.white : Color(0xffF1A23A),
            fontWeight: FontWeight.bold,
          ),
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
      padding: EdgeInsets.all(30.0),
      child: Stack(
        children: <Widget>[
          /*Positioned(
            child: _Shadow(),
            bottom: -20.0,
            left: 50.0,
          ),*/
          Image(
            image: AssetImage('assets/images/azul.png'),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

/*class _Shadow extends StatelessWidget {
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
            BoxShadow(
                color: Color(0xffEAA14E),
                blurRadius: 40.0,
                offset: Offset(10.0, 10.0)),
          ],
        ),
      ),
    );
  }
}*/
