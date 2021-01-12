import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/utils/styles.dart';

class Footer extends BaseStatelessWidget {
  @override
  Widget setView(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getFooterMobile(),
      tablet: _getFooterDesktop(),
      desktop: _getFooterDesktop(),
    );
  }

  Widget _getFooterDesktop() {
    return Container(
      color: Colors.white,
      padding:
          EdgeInsets.symmetric(horizontal: width(140), vertical: height(40)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Image.asset(
                  '${imagePath}uo_logo.png',
                  width: width(200),
                  height: height(80),
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: height(8),
                ),
                Text(
                  'Universal Optics offers a huge assortment of optical component that enabled in setting a benchmark of quality and performance in the worldwide market.',
                  style: Style.caption,
                )
              ],
            ),
          ),
          SizedBox(
            width: width(24),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CATEGORIES', style: Style.subtitle2),
                SizedBox(
                  height: height(16),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Lenses',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Prism',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Optical Filters',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Optical Window',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Beam Splitter',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Reflectors & Mirrors',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Glass Magnifier',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Glass Moulds',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Optical Glasses',
                    style: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(8),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Telescope',
                    style: Style.caption,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text('CONTACT', style: Style.subtitle2),
                SizedBox(
                  height: height(8),
                ),
                Text(
                  'Mukul Garg (proprieter)',
                  style: Style.caption,
                ),
                Text(
                  'D-1, Industrial Estate, Roorkee, Uttarakhand - 247667, India',
                  style: Style.caption,
                ),
                Text(
                  '+91-9837039970, +91-9897152595',
                  style: Style.caption,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getFooterMobile() {
    return Container(
      color: Colors.white,
      padding:
          EdgeInsets.symmetric(horizontal: width(140), vertical: height(40)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Image.asset(
                  '${imagePath}uo_logo.png',
                  width: width(200),
                  height: height(80),
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: height(8),
                ),
                Text(
                  'Universal Optics offers a huge assortment of optical component that enabled in setting a benchmark of quality and performance in the worldwide market.',
                  style: Style.caption,
                )
              ],
            ),
          ),
          SizedBox(
            width: width(32),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text('CONTACT', style: Style.subtitle2),
                SizedBox(
                  height: height(8),
                ),
                Text(
                  'Mukul Garg (proprieter)',
                  style: Style.caption,
                ),
                Text(
                  'D-1, Industrial Estate, Roorkee, Uttarakhand - 247667, India',
                  style: Style.caption,
                ),
                Text(
                  '+91-9837039970, +91-9897152595',
                  style: Style.caption,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
