import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:universal_optics/views/responsive/nav_bar/nav_bar_desktop.dart';

import 'nav_bar_mobile.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarDesktop(),
      desktop: NavBarDesktop(),
    );
  }
}
