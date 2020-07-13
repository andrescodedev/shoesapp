import 'package:flutter/material.dart';
import 'package:shoesapp/widgets/orange_buttom.dart';

class ShoesCart extends StatelessWidget {
  final double shoesValue;
  final String buttonText;
  final double buttonWidth;
  final bool buttonBackgroundColor;
  final bool fullScreen;

  ShoesCart(
      {@required this.shoesValue,
      @required this.buttonText,
      this.buttonWidth,
      this.buttonBackgroundColor = true,
      this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: (!fullScreen) ? 60.0 : 20.0,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: (buttonBackgroundColor)
              ? Colors.grey.withOpacity(0.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _ShoesValueText(
              value: this.shoesValue,
            ),
            OrangeButtom(
              text: this.buttonText,
              width: this.buttonWidth,
            ),
          ],
        ),
      ),
    );
  }
}

/*class _AddToCart extends StatelessWidget {
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
}*/

class _ShoesValueText extends StatelessWidget {
  final double value;

  _ShoesValueText({@required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$$value',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    );
  }
}
