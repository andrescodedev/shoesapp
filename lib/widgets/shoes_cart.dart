import 'package:flutter/material.dart';

class ShoesCart extends StatelessWidget {
  final double size;

  ShoesCart({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 60.0,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _ShoesValueText(
              value: 180.0,
            ),
            _AddToCart(
              size: this.size,
            ),
          ],
        ),
      ),
    );
  }
}

class _AddToCart extends StatelessWidget {
  final double size;

  _AddToCart({@required this.size});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: this.size),
      child: Text(
        'Add to cart',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10.0,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    );
  }
}

class _ShoesValueText extends StatelessWidget {
  final double value;

  _ShoesValueText({@required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$value',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
