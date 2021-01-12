import 'package:flutter/material.dart';
import 'package:universal_optics/utils/base_stateful_widget.dart';
import 'package:universal_optics/views/responsive/home/home.dart';

class HomePage extends BaseStatefulWidget {
  HomePage({Key key}) : super(key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends BaseState<HomePage> {
  @override
  Widget setView(BuildContext context) {
    return Home();
  }
}
