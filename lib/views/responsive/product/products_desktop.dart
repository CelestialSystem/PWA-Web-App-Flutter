import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:universal_optics/states/product_states.dart';
import 'package:universal_optics/utils/base_stateful_widget.dart';
import 'package:universal_optics/utils/styles.dart';

class ProductDesktop extends BaseStatefulWidget {
  ProductDesktop({Key key}) : super(key);

  @override
  State<StatefulWidget> createState() {
    return ProductDesktopState();
  }
}

class ProductDesktopState extends BaseState<ProductDesktop> {
  @override
  void initState() {
    final ReactiveModel<ProductStates> modelRM = RM.get<ProductStates>();
    modelRM.setState((s) => s.getProducts());
    super.initState();
  }

  @override
  Widget setView(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(250)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: _getProductMenu()),
          Expanded(
            flex: 5,
            child: StateBuilder<ProductStates>(
                observe: () => RM.get<ProductStates>(),
                builder: (context, rm) {
                  if (rm.connectionState == ConnectionState.done) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: width(50)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: CarouselSlider(
                                    items: rm.state.image
                                        .map(
                                          (e) => Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: height(10),
                                                horizontal: width(10)),
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(2, 2),
                                                      blurRadius: 2,
                                                      color:
                                                          Colors.grey.shade200)
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    '$imagePath$e',
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                            height: height(400),
                                            width: width(600),
                                          ),
                                        )
                                        .toList(),
                                    options: CarouselOptions(
                                      height: height(400),
                                      aspectRatio: 16 / 9,
                                      viewportFraction: 1,
                                      initialPage: 0,
                                      carouselController: CarouselController(),
                                      enableInfiniteScroll: true,
                                      reverse: false,
                                      autoPlay: true,
                                      autoPlayInterval: Duration(seconds: 3),
                                      autoPlayAnimationDuration:
                                          Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: true,
                                      scrollDirection: Axis.horizontal,
                                    )),
                              ),
                              SizedBox(
                                width: width(16),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width(50)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        rm.state.title,
                                        style: Style.h4,
                                      ),
                                      SizedBox(
                                        height: height(20),
                                      ),
                                      Text(
                                        rm.state.description,
                                        style: Style.subtitle1.copyWith(
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: height(50),
                                      ),
                                      Container(
                                        width: width(298),
                                        height: height(40),
                                        child: RaisedButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            onPressed: () {},
                                            child: Text(
                                              'YES! I\'M INTERESTED',
                                              style: Style.button.copyWith(
                                                  color: Colors.white,
                                                  fontSize: textSize(14)),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height(250)),
                          Text(
                            "Explore More Products",
                            style: Style.h5,
                          ),
                          SizedBox(height: height(40)),
                          StateBuilder<ProductStates>(
                              observe: () => RM.get<ProductStates>(),
                              disposeModels: true,
                              builder: (context, rm) {
                                if (rm.connectionState ==
                                    ConnectionState.done) {
                                  return CarouselSlider(
                                      items: rm.state.productsList
                                          .map(
                                            (e) => Container(
                                              height: height(150),
                                              width: width(300),
                                              child: Column(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      final model = RM
                                                          .get<ProductStates>();
                                                      model.setState((s) =>
                                                          s.setSelectedProduct(
                                                              e.name,
                                                              e.image,
                                                              e.description));
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                                offset: Offset(
                                                                    2, 2),
                                                                blurRadius: 2,
                                                                color: Colors
                                                                    .grey
                                                                    .shade200)
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              '$imagePath${e.image.elementAt(0)}',
                                                            ),
                                                            fit: BoxFit.cover,
                                                          )),
                                                      height: height(200),
                                                      width: width(300),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: height(10),
                                                  ),
                                                  Text(e.name)
                                                ],
                                              ),
                                            ),
                                          )
                                          .toList(),
                                      options: CarouselOptions(
                                        height: height(450),
                                        viewportFraction: 0.3,
                                        initialPage: 0,
                                        carouselController:
                                            CarouselController(),
                                        enableInfiniteScroll: true,
                                        reverse: false,
                                        autoPlay: true,
                                        autoPlayInterval: Duration(seconds: 3),
                                        autoPlayAnimationDuration:
                                            Duration(milliseconds: 800),
                                        autoPlayCurve: Curves.fastOutSlowIn,
                                        enlargeCenterPage: true,
                                        scrollDirection: Axis.horizontal,
                                      ));
                                } else {
                                  return Center(
                                      child: CircularProgressIndicator());
                                }
                              }),
                        ],
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }

  Widget _getProductMenu() {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: height(20), horizontal: width(10)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade200,
      ),
      child: Column(
        children: [
          Text('Products'),
          SizedBox(height: height(20)),
          StateBuilder<ProductStates>(
            observe: () => RM.get<ProductStates>(),
            builder: (context, rm) {
              if (rm.connectionState == ConnectionState.done) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: rm.state.productsList.length,
                    physics: PageScrollPhysics(),
                    itemBuilder: (context, index) => index == 0
                        ? ExpansionTile(
                            initiallyExpanded: true,
                            title: Text(
                              rm.state.productsList.elementAt(index).name,
                              style: Style.subtitle1,
                            ),
                            children: rm.state.productsList
                                .elementAt(index)
                                .subCategory
                                .map((e) => InkWell(
                                      onTap: () {
                                        rm.setState((s) => s.setSelectedProduct(
                                            e.name, e.image, e.description));
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width(16),
                                            vertical: height(16)),
                                        child: Text(
                                          e.name,
                                          style: Style.caption.copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: rm.state.title == e.name
                                                  ? Colors.blue.shade700
                                                  : Colors.black),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ))
                                .toList(),
                          )
                        : InkWell(
                            onTap: () {
                              rm.setState((s) => s.setSelectedProduct(
                                  rm.state.productsList.elementAt(index).name,
                                  rm.state.productsList.elementAt(index).image,
                                  rm.state.productsList
                                      .elementAt(index)
                                      .description));
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width(16), vertical: height(16)),
                              child: Text(
                                rm.state.productsList.elementAt(index).name,
                                style: Style.subtitle1.copyWith(
                                    color: rm.state.title ==
                                            rm.state.productsList
                                                .elementAt(index)
                                                .name
                                        ? Colors.blue.shade700
                                        : Colors.black),
                              ),
                            ),
                          ));
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
