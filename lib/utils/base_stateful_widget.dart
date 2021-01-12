import 'package:flutter/material.dart';

import 'adaptive_dimensions_flutter.dart';
import 'bundle.dart';

abstract class BaseStatefulWidget extends StatefulWidget {
  final RouteObserver routeObserver;
  final Key key;
  final Bundle arguments;

  BaseStatefulWidget(this.key, {this.routeObserver, this.arguments})
      : super(key: key);
}

abstract class BaseState<W extends BaseStatefulWidget> extends State<W>
    with WidgetsBindingObserver, RouteAware {
  AdaptiveDimensions _dimension;
  final String imagePath = "lib/resources/images/";
  final String animPath = "lib/resources/anims/";

  BaseState();

  void initDimension(BuildContext context) {
    _dimension = AdaptiveDimensions(context, 1920, 1080);
  }

  @override
  Widget build(BuildContext context) {
    initDimension(context);
    return SafeArea(
      child: setView(context),
      maintainBottomViewPadding: true,
      bottom: false,
    );
  }

  AdaptiveDimensions getAdaptiveDimensions() {
    return _dimension;
  }

  Widget setView(BuildContext context);

  width(double width) => getAdaptiveDimensions().width(width);

  height(double height) => getAdaptiveDimensions().height(height);

  fieldHeight() => 40;

  textSize(double fontSize, {bool scale = true}) =>
      getAdaptiveDimensions().size(
                fontSize,
              ) <
              12
          ? 12.0
          : getAdaptiveDimensions().size(
              fontSize,
            );

  top(double top) => getAdaptiveDimensions().top(top);

  bottom(double bottom) => getAdaptiveDimensions().bottom(bottom);

  left(double left) => getAdaptiveDimensions().left(left);

  right(double right) => getAdaptiveDimensions().right(right);

  fullWidth() => getAdaptiveDimensions().fullWidth();

  fullHeight() => getAdaptiveDimensions().fullHeight();
}
