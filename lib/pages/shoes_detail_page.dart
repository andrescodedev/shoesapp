import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/helpers/herlpers.dart';
import 'package:shoesapp/models/shoes_model.dart';
import 'package:shoesapp/widgets/custom_widgets.dart';
import 'package:animate_do/animate_do.dart';

class ShoesDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    changeStatusLight();
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: 'shoesHero',
                child: ShoesSizePreview(
                  fullScreen: true,
                ),
              ),
              Positioned(
                top: 60.0,
                left: 20.0,
                child: GestureDetector(
                  onTap: () {
                    changeStatusDark();
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  ShoesDescription(
                    fullScreen: true,
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  Bounce(
                    child: ShoesCart(
                      shoesValue: 180.0,
                      buttonText: 'Buy now',
                      buttonWidth: 15.0,
                      buttonBackgroundColor: false,
                      fullScreen: true,
                    ),
                  ),
                  _ColorsOption(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _NavigationOptions(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _NavigationIcons(
          icon: Icons.favorite,
          iconColor: Colors.red,
        ),
        _NavigationIcons(
          icon: Icons.shopping_cart,
        ),
        _NavigationIcons(
          icon: Icons.settings,
        ),
      ],
    );
  }
}

class _NavigationIcons extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  _NavigationIcons({@required this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 1.0),
                blurRadius: 20.0,
                spreadRadius: -5.0)
          ]),
      child: Icon(
        icon,
        color: iconColor ?? Colors.grey.withOpacity(0.4),
      ),
    );
  }
}

class _ColorsOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 60.0,
                  child: _CircleShape(
                    color: Colors.lightGreen,
                    index: 4,
                    urlImage: 'assets/images/verde.png',
                  ),
                ),
                Positioned(
                  left: 40.0,
                  child: _CircleShape(
                    color: Colors.green,
                    index: 3,
                    urlImage: 'assets/images/amarillo.png',
                  ),
                ),
                Positioned(
                  left: 20.0,
                  child: _CircleShape(
                    color: Colors.black,
                    index: 2,
                    urlImage: 'assets/images/negro.png',
                  ),
                ),
                _CircleShape(
                  color: Colors.blueGrey,
                  index: 1,
                  urlImage: 'assets/images/azul.png',
                ),
              ],
            ),
          ),
          OrangeButtom(
            text: 'More related themes',
            enable: false,
            width: 20.0,
          ),
        ],
      ),
    );
  }
}

class _CircleShape extends StatelessWidget {
  final Color color;
  final int index;
  final String urlImage;

  _CircleShape({
    this.color = Colors.pink,
    this.index,
    this.urlImage,
  });

  @override
  Widget build(BuildContext context) {
    final shoesModel = Provider.of<ShoesModel>(context);
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 200),
      //duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          shoesModel.setImageRoute = this.urlImage;
          ShoesWithShadow().build(context);
        },
        child: Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
