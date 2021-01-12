import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:universal_optics/states/product_states.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/utils/styles.dart';
import 'package:universal_optics/views/pages/products_page.dart';
import 'package:universal_optics/views/responsive/home/home_crousel.dart';
import 'package:universal_optics/views/responsive/home_product_grid/home_product_grid.dart';

class Home extends BaseStatelessWidget {
  @override
  Widget setView(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getHomeMobile(),
      tablet: _getHomeTablet(),
      desktop: _getHomeDesktop(),
    );
  }

  Widget _getHomeDesktop() {
    return Column(
      children: [
        HomeCrousel(),
        SizedBox(
          height: height(70),
        ),
        Text(
          'ONE-STOP OPTICAL SOLUTION',
          style: Style.h4.copyWith(fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width(450), vertical: height(50)),
          child: Text(
              'Universal Optics offers a huge assortment of optical component that enabled in setting a benchmark of quality and performance in the worldwide market. The company is primarily engaged in the manufacturing, supplying and exporting of optical component. In addition to this, the company is also recognised as one of the top-notch Meniscus Lenses Exporters and Optic Lenses Suppliers in India.',
              textAlign: TextAlign.center,
              style: Style.subtitle1.copyWith(
                fontWeight: FontWeight.w300,
              )),
        ),
        SizedBox(
          height: height(70),
        ),
        Text(
          'Product Range',
          style: Style.h4.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: height(40),
        ),
        HomeProductGrid(),
        SizedBox(
          height: 50,
        ),
        Container(
          width: width(200),
          height: height(40),
          child: OutlineButton(
              borderSide: BorderSide(color: Colors.blue.shade700, width: 2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {
                final ReactiveModel<ProductStates> modelRM =
                    RM.get<ProductStates>();
                modelRM.setState(
                    (s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
              },
              child: Text(
                'VIEW ALL',
                style: Style.button.copyWith(color: Colors.black, fontSize: 14),
              )),
        ),
      ],
    );
  }

  Widget _getHomeTablet() {
    return Column(
      children: [
        HomeCrousel(),
        SizedBox(
          height: height(70),
        ),
        Text(
          'ONE-STOP OPTICAL SOLUTION',
          style: Style.h5.copyWith(fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width(350), vertical: height(50)),
          child: Text(
              'Universal Optics offers a huge assortment of optical component that enabled in setting a benchmark of quality and performance in the worldwide market. The company is primarily engaged in the manufacturing, supplying and exporting of optical component. In addition to this, the company is also recognised as one of the top-notch Meniscus Lenses Exporters and Optic Lenses Suppliers in India.',
              textAlign: TextAlign.center,
              style: Style.subtitle1.copyWith(
                fontWeight: FontWeight.w400,
              )),
        ),
        SizedBox(
          height: height(70),
        ),
        Text(
          'Product Range',
          style: Style.h5.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: height(40),
        ),
        HomeProductGrid(),
        Container(
          width: fullWidth(),
          height: height(40),
          padding: EdgeInsets.symmetric(
            horizontal: width(350),
          ),
          child: OutlineButton(
              borderSide: BorderSide(color: Colors.blue.shade700, width: 2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {
                final ReactiveModel<ProductStates> modelRM =
                    RM.get<ProductStates>();
                modelRM.setState(
                    (s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
              },
              child: Text(
                'VIEW ALL',
                style: Style.button.copyWith(color: Colors.black, fontSize: 14),
              )),
        ),
      ],
    );
  }

  Widget _getHomeMobile() {
    return Column(
      children: [
        HomeCrousel(),
        SizedBox(
          height: height(70),
        ),
        Text(
          'ONE-STOP OPTICAL SOLUTION',
          style: Style.h5.copyWith(fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width(350), vertical: height(50)),
          child: Text(
              'Universal Optics offers a huge assortment of optical component that enabled in setting a benchmark of quality and performance in the worldwide market. The company is primarily engaged in the manufacturing, supplying and exporting of optical component. In addition to this, the company is also recognised as one of the top-notch Meniscus Lenses Exporters and Optic Lenses Suppliers in India.',
              textAlign: TextAlign.center,
              style: Style.subtitle1.copyWith(
                fontWeight: FontWeight.w400,
              )),
        ),
        SizedBox(
          height: height(70),
        ),
        Text(
          'Product Range',
          style: Style.h5.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: height(40),
        ),
        HomeProductGrid(),
        Container(
          width: fullWidth(),
          height: height(40),
          padding: EdgeInsets.symmetric(
            horizontal: width(350),
          ),
          child: OutlineButton(
              borderSide: BorderSide(color: Colors.blue.shade700, width: 2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {
                final ReactiveModel<ProductStates> modelRM =
                    RM.get<ProductStates>();
                modelRM.setState(
                    (s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
              },
              child: Text(
                'VIEW ALL',
                style: Style.button.copyWith(color: Colors.black, fontSize: 12),
              )),
        ),
      ],
    );
  }
}
