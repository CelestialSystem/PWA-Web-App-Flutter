import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/utils/styles.dart';

class HomeProductGridItem extends BaseStatelessWidget {
  final String image;
  final String title;
  final VoidCallback callback;

  HomeProductGridItem(
      {@required this.image, @required this.title, @required this.callback});
  @override
  Widget setView(BuildContext context) {
    return ResponsiveBuilder(builder: (context, rs) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: width(16)),
        child: InkWell(
            onTap: callback,
            child: rs.isDesktop
                ? Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 1),
                                  blurRadius: 3,
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(
                                  image,
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: height(16),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: Style.subtitle1
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: height(32),
                      ),
                    ],
                  )
                : rs.isTablet
                    ? Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: width(600),
                              height: height(150),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(2, 2),
                                      blurRadius: 3,
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage(
                                      image,
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: height(16),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: Style.subtitle1
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: height(32),
                          ),
                        ],
                      )
                    : Container(
                        height: height(250),
                        width: width(600),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: width(600),
                              height: height(150),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(2, 2),
                                      blurRadius: 3,
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage(
                                      image,
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              height: height(16),
                            ),
                            Flexible(
                              child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: Style.subtitle1
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: height(32),
                            ),
                          ],
                        ),
                      )),
      );
    });
  }
}
