import 'dart:math';

import 'package:flutter/widgets.dart';

class AdaptiveDimensions {
  MediaQueryData _mediaQuery;
  double _widthScaleFactor;
  double _heightScaleFactor;
  double _textScaleFactor;

  AdaptiveDimensions(BuildContext buildContext, double referenceWidth,
      double referenceHeight) {
    _mediaQuery = MediaQuery.of(buildContext);
    _widthScaleFactor = _mediaQuery.size.width / referenceWidth;
    _heightScaleFactor = _mediaQuery.size.height / referenceHeight;
    _textScaleFactor = _mediaQuery.textScaleFactor;
//    print(
//        "Width Scale Factor: $_widthScaleFactor, Height Scale Factor: $_heightScaleFactor, Text Scale Factor: $_textScaleFactor");
  }

  width(double width) => (width * _widthScaleFactor).toDouble().toPrecision(4);

  size(double width) => (width * _widthScaleFactor).toDouble().toPrecision(4);

  height(double height) =>
      (height * _heightScaleFactor).toDouble().toPrecision(4);

  fontSize(double fontSize, {bool scale = true}) =>
      (scale ? width(fontSize) / _textScaleFactor : width(fontSize));

  top(double top) => (top * _heightScaleFactor).toDouble().toPrecision(4);

  bottom(double bottom) =>
      (bottom * _heightScaleFactor).toDouble().toPrecision(4);

  left(double left) => (left * _widthScaleFactor).toDouble().toPrecision(4);

  right(double right) => (right * _widthScaleFactor).toDouble().toPrecision(4);

  fullWidth() => _mediaQuery.size.width.toPrecision(4);

  fullHeight() =>
      _mediaQuery.size.height.toPrecision(4) -
      (_mediaQuery.padding.vertical - _mediaQuery.padding.top);
}

extension Precision on double {
  double toPrecision(int fractionDigits) {
    double mod = pow(10, fractionDigits.toDouble());
    return ((this * mod).round().toDouble() / mod);
  }
}
