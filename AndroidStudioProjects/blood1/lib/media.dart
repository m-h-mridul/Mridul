import 'package:flutter/widgets.dart';

class MediaQuerypage {
  static String firebaseName='blood1';
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double smallSizeHeight;
  static double smallSizeWidth;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  MediaQuerypage.init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    smallSizeWidth = screenWidth/100;
    smallSizeHeight = screenHeight/100;
    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal)/100;
    safeBlockVertical = (screenHeight - _safeAreaVertical)/100;
  }
}