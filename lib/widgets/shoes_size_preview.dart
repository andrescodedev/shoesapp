import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/models/shoes_model.dart';
import 'package:shoesapp/pages/shoes_detail_page.dart';

class ShoesSizePreview extends StatelessWidget {
  final bool fullScreen;

  ShoesSizePreview({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!fullScreen) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ShoesDetailPage(),
              ));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (this.fullScreen) ? 3.0 : 40.0,
          vertical: (this.fullScreen) ? 0.0 : 20.0,
        ),
        child: Container(
          width: double.infinity,
          height: (this.fullScreen) ? 410.0 : 370.0,
          decoration: BoxDecoration(
              //color: Color(0xffFFCF53),
              color: Colors.orangeAccent,
              borderRadius: (!this.fullScreen)
                  ? BorderRadius.circular(30.0)
                  : BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    )),
          child: Column(
            children: <Widget>[
              ShoesWithShadow(),
              if (!this.fullScreen) _ShoesSize(),
            ],
          ),
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
    final shoesModel = Provider.of<ShoesModel>(context);
    return GestureDetector(
      onTap: () {
        shoesModel.setShoesSize = this.size;
        print(shoesModel.getShoesSize);
      },
      child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          //Color(0xffF1A23A)
          color: (this.size == shoesModel.getShoesSize)
              ? Colors.blueGrey
              : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            if (this.size == shoesModel.getShoesSize)
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.blueGrey,
                offset: Offset(0.0, 1.0),
              )
          ],
        ),
        child: Center(
          child: Text(
            '${size.toString().replaceAll('.0', '')}',
            style: TextStyle(
              color: (this.size == shoesModel.getShoesSize)
                  ? Colors.white
                  : Color(0xffF1A23A),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ShoesWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final shoesModel = Provider.of<ShoesModel>(context);
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Stack(
        children: <Widget>[
          /*Positioned(
            child: _Shadow(),
            bottom: -20.0,
            left: 50.0,
          ),*/
          FadeInRight(
            duration: Duration(seconds: 3),
            child: Image(
              image: AssetImage(shoesModel.getImageRoute),
              fit: BoxFit.cover,
            ),
          )
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
