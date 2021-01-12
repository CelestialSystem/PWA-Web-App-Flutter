// import 'package:flutter/material.dart';

// import 'adaptive_dimensions_flutter.dart';

// abstract class BaseStatelessWidget extends StatelessWidget {
//   final String imagePath = "lib/resources/images/";
//   final String animPath = "lib/resources/anims/";
//   AdaptiveDimensions _dimension;

//   @override
//   Widget build(BuildContext context) {
//     AdaptiveDimensions.init(context, 375, 850);
//     _dimension = AdaptiveDimensions.instance;
//     return Scaffold(body: setView(context));
//   }

//   Widget setView(BuildContext context);

//   AdaptiveDimensions getAdaptiveDimensions() {
//     return _dimension;
//   }

//   width(double width) => getAdaptiveDimensions().width(width);

//   height(double height) => getAdaptiveDimensions().height(height);

//   fieldHeight() => 40;

//   textSize(double fontSize, {bool scale = true}) =>
//       getAdaptiveDimensions().size(fontSize, scale: scale);

//   top(double top) => getAdaptiveDimensions().top(top);

//   bottom(double bottom) => getAdaptiveDimensions().bottom(bottom);

//   left(double left) => getAdaptiveDimensions().left(left);

//   right(double right) => getAdaptiveDimensions().right(right);

//   fullWidth() => getAdaptiveDimensions().fullWidth();

//   fullHeight() => getAdaptiveDimensions().fullHeight();
// }
