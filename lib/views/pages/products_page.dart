import 'package:flutter/material.dart';
import 'package:universal_optics/utils/base_stateful_widget.dart';
import 'package:universal_optics/views/responsive/product/product.dart';

class ProductsPage extends BaseStatefulWidget {
  ProductsPage({Key key}) : super(key);

  @override
  State<StatefulWidget> createState() {
    return ProductsPageState();
  }
}

class ProductsPageState extends BaseState<ProductsPage> {
  @override
  Widget setView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Product(),
      ],
    );
  }
}
