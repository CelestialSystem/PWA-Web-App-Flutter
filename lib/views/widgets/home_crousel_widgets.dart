import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/utils/styles.dart';

class HomeCrouselWidgets extends BaseStatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback callback;

  HomeCrouselWidgets(this.image, this.title, this.subtitle, this.callback);
  @override
  Widget setView(BuildContext context) {
    return ResponsiveBuilder(builder: (context, responsive) {
      return Container(
        height: height(819),
        width: width(1920),
        child: Stack(
          children: [
            Container(
              height: height(819),
              width: width(1920),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            !responsive.isMobile
                ? Positioned(
                    top: top(250),
                    left: left(300),
                    child: Container(
                        height: height(200),
                        width: width(300),
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: Style.h3.copyWith(
                                  color: Colors.white, fontSize: textSize(48)),
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                            Text(
                              subtitle,
                              style: Style.subtitle2.copyWith(
                                  color: Colors.white, fontSize: textSize(14)),
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                            Container(
                              width: width(298),
                              height: height(40),
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  onPressed: callback,
                                  child: Text(
                                    'KNOW MORE',
                                    style: Style.button.copyWith(
                                        color: Colors.white,
                                        fontSize: textSize(14)),
                                  )),
                            )
                          ],
                        )),
                  )
                : Positioned(
                    top: top(280),
                    left: 1,
                    right: 1,
                    child: Container(
                        height: height(200),
                        width: width(400),
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: Style.h4.copyWith(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                            Text(
                              subtitle,
                              style: Style.subtitle1.copyWith(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                            Container(
                              width: width(600),
                              height: height(40),
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  onPressed: () {},
                                  child: Text(
                                    'KNOW MORE',
                                    style: Style.button.copyWith(
                                      color: Colors.white,
                                    ),
                                  )),
                            )
                          ],
                        )),
                  ),
          ],
        ),
      );
    });
  }
}
