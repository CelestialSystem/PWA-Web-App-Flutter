import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/utils/styles.dart';
import 'package:universal_optics/views/widgets/product_category_widget.dart';

class AboutUs extends BaseStatelessWidget {
  @override
  Widget setView(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getAboutUsMobile(),
      tablet: _getAboutUsTablet(),
      desktop: _getAboutUsDesktop(),
    );
  }

  Widget _getAboutUsDesktop() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(350)),
      child: Row(
        children: [
          Expanded(flex: 2, child: ProductCategoryWidget()),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width(100)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text("COMPANY PROFILE", style: Style.h4),
                  ),
                  SizedBox(
                    height: height(50),
                  ),
                  Text(
                      'Our company has witnessed splendiferous growth since the year of inception i.e. 1965. The honorable Proprieter Mr. A. P. Garg has also helped in the fast and steady growth of the company via his profound knowledge in the concerned field. The company is also recognized amongst the trustworthy Cylindrical Lenses Manufacturers and Photography Lenses Suppliers in India. We have also gained specialization in the dealing of unmatched Magnifier Lenses.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Infrastructure',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'Our state-of-the-art infrastructure unit is backed with technologically advanced tools and machineries that assist in the production of flawless optical products. Moreover, well-equipped Manufacturing Unit, Quality Control Lab, R & D Unit etc. are also considered as an invincible part of our robust infrastructural base.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Quality Assurance',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'Being a quality centric enterprise, various stringent quality checks are made under the supervision of our quality control executives. Moreover, the working of the optical equipments is also checked so as to ensure delivery of quality products to the clients.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Inovations',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'To stand successfully in the cutthroat competition, the technological innovations have provided strong support. Moreover the appointed personnel have profound knowledge of the optical products and hence serve equipments that acquire maximum satisfaction.',
                      style: Style.subtitle1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getAboutUsTablet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(150)),
      child: Row(
        children: [
          Expanded(flex: 2, child: ProductCategoryWidget()),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width(100)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text("COMPANY PROFILE", style: Style.h4),
                  ),
                  SizedBox(
                    height: height(50),
                  ),
                  Text(
                      'Our company has witnessed splendiferous growth since the year of inception i.e. 1965. The honorable Proprieter Mr. A. P. Garg has also helped in the fast and steady growth of the company via his profound knowledge in the concerned field. The company is also recognized amongst the trustworthy Cylindrical Lenses Manufacturers and Photography Lenses Suppliers in India. We have also gained specialization in the dealing of unmatched Magnifier Lenses.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Infrastructure',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'Our state-of-the-art infrastructure unit is backed with technologically advanced tools and machineries that assist in the production of flawless optical products. Moreover, well-equipped Manufacturing Unit, Quality Control Lab, R & D Unit etc. are also considered as an invincible part of our robust infrastructural base.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Quality Assurance',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'Being a quality centric enterprise, various stringent quality checks are made under the supervision of our quality control executives. Moreover, the working of the optical equipments is also checked so as to ensure delivery of quality products to the clients.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Inovations',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'To stand successfully in the cutthroat competition, the technological innovations have provided strong support. Moreover the appointed personnel have profound knowledge of the optical products and hence serve equipments that acquire maximum satisfaction.',
                      style: Style.subtitle1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getAboutUsMobile() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(350)),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width(100)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("COMPANY PROFILE",
                      textAlign: TextAlign.center, style: Style.h4),
                  SizedBox(
                    height: height(50),
                  ),
                  Text(
                      'Our company has witnessed splendiferous growth since the year of inception i.e. 1965. The honorable Proprieter Mr. A. P. Garg has also helped in the fast and steady growth of the company via his profound knowledge in the concerned field. The company is also recognized amongst the trustworthy Cylindrical Lenses Manufacturers and Photography Lenses Suppliers in India. We have also gained specialization in the dealing of unmatched Magnifier Lenses.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Infrastructure',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'Our state-of-the-art infrastructure unit is backed with technologically advanced tools and machineries that assist in the production of flawless optical products. Moreover, well-equipped Manufacturing Unit, Quality Control Lab, R & D Unit etc. are also considered as an invincible part of our robust infrastructural base.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Quality Assurance',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'Being a quality centric enterprise, various stringent quality checks are made under the supervision of our quality control executives. Moreover, the working of the optical equipments is also checked so as to ensure delivery of quality products to the clients.',
                      style: Style.subtitle1),
                  SizedBox(
                    height: height(40),
                  ),
                  Text(
                    'Inovations',
                    style: Style.h6,
                  ),
                  SizedBox(
                    height: height(20),
                  ),
                  Text(
                      'To stand successfully in the cutthroat competition, the technological innovations have provided strong support. Moreover the appointed personnel have profound knowledge of the optical products and hence serve equipments that acquire maximum satisfaction.',
                      style: Style.subtitle1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
