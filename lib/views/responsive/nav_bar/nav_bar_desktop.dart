import 'package:flutter/material.dart';
import 'package:universal_optics/utils/base_stateful_widget.dart';

class NavBarDesktop extends BaseStatefulWidget {
  NavBarDesktop({Key key}) : super(key);

  @override
  State<StatefulWidget> createState() {
    return NavBarDesktopState();
  }
}

class NavBarDesktopState extends BaseState<NavBarDesktop> {
  NavBarDesktopState();

  String selected;

  @override
  void initState() {
    selected = 'HOME';
    super.initState();
  }

  @override
  Widget setView(context) {
    return Container();
  }
}
