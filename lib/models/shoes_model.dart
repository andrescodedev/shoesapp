import 'package:flutter/material.dart';

class ShoesModel with ChangeNotifier {
  String _imageRoute = 'assets/images/azul.png';
  double _shoesSize = 9.0;
  bool _updateAnimation = true;

  String get getImageRoute => this._imageRoute;
  double get getShoesSize => this._shoesSize;
  bool get getUpdateAnimation => this._updateAnimation;

  set setImageRoute(String route) {
    this._imageRoute = route;
    notifyListeners();
  }

  set setShoesSize(double size) {
    this._shoesSize = size;
    notifyListeners();
  }

  set setUpdateAnimation(bool update) {
    this._updateAnimation = update;
    notifyListeners();
  }
}
