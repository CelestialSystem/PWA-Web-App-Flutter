import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:universal_optics/views/responsive/product/product_mobile.dart';
import 'package:universal_optics/views/responsive/product/product_tablet.dart';
import 'package:universal_optics/views/responsive/product/products_desktop.dart';

class Product extends StatelessWidget {
  const Product({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProductMobile(),
      tablet: ProductTablet(),
      desktop: ProductDesktop(),
    );
  }
}
