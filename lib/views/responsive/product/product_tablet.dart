import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_optics/models/products.dart';
import 'package:universal_optics/utils/base_stateful_widget.dart';
import 'package:universal_optics/utils/styles.dart';

class ProductTablet extends BaseStatefulWidget {
  ProductTablet({Key key}) : super(key);

  @override
  State<StatefulWidget> createState() {
    return ProductTabletState();
  }
}

class ProductTabletState extends BaseState<ProductTablet> {
  Future<List<Products>> _loadFromAsset() async {
    return productsFromJson(
        await rootBundle.loadString("lib/resources/assets/products.json"));
  }

  List<String> image = ['img_achromatic_lens.jpg'];
  String title = 'Achromatic Lenses';
  String desc =
      'We are renowned as one of the most prominent Achromatic Lens Manufacturers in India. The Achromatic Lenses (achromat) are designed to eliminate chromatic and spherical aberrations inherent in singlet lenses. When used on-axis, an achromatic lens focuses unparallel input beam to a perfect point, limited only by the effects of diffraction. This performance can be achieved over a broadband of wavelength. Achromatic Doublet Lens is used to collimate and focus laser beams. They can also be used for high-quality imaging on-axis.';

  @override
  Widget setView(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(50)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: _getProductMenu()),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width(50)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      image.length > 1
                          ? Expanded(
                              flex: 2,
                              child: CarouselSlider(
                                  items: image
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
                                                    color: Colors.grey.shade200)
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
                            )
                          : Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height(10), horizontal: width(10)),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 2,
                                        color: Colors.grey.shade200)
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      '$imagePath${image.elementAt(0)}',
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                              height: height(400),
                              width: width(600),
                            ),
                      SizedBox(
                        width: width(16),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: width(50)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: Style.h4,
                              ),
                              SizedBox(
                                height: height(20),
                              ),
                              Text(
                                desc,
                                style: Style.subtitle1
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: height(50),
                              ),
                              Container(
                                width: width(500),
                                height: height(50),
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
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
                  FutureBuilder<List<Products>>(
                      future: _loadFromAsset(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return CarouselSlider(
                              items: snapshot.data
                                  .map(
                                    (e) => Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: height(50),
                                              horizontal: width(10)),
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    offset: Offset(2, 2),
                                                    blurRadius: 2,
                                                    color: Colors.grey.shade200)
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  '$imagePath${e.image.elementAt(0)}',
                                                ),
                                                fit: BoxFit.cover,
                                              )),
                                          height: height(250),
                                          width: width(500),
                                        ),
                                        SizedBox(
                                          height: height(10),
                                        ),
                                        Text(e.name)
                                      ],
                                    ),
                                  )
                                  .toList(),
                              options: CarouselOptions(
                                height: height(350),
                                viewportFraction: 0.5,
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
                              ));
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      }),
                ],
              ),
            ),
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
          FutureBuilder<List<Products>>(
            future: _loadFromAsset(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    physics: PageScrollPhysics(),
                    itemBuilder: (context, index) => index == 0
                        ? ExpansionTile(
                            initiallyExpanded: true,
                            title: Text(
                              snapshot.data.elementAt(index).name,
                              style: Style.subtitle1,
                            ),
                            children: snapshot.data
                                .elementAt(index)
                                .subCategory
                                .map((e) => InkWell(
                                      onTap: () {
                                        setState(() {
                                          image = e.image;
                                          title = e.name;
                                          desc = e.description;
                                        });
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
                                              color: title == e.name
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
                              setState(() {
                                image = snapshot.data.elementAt(index).image;
                                title = snapshot.data.elementAt(index).name;
                                desc =
                                    snapshot.data.elementAt(index).description;
                              });
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width(16), vertical: height(16)),
                              child: Text(
                                snapshot.data.elementAt(index).name,
                                style: Style.subtitle1.copyWith(
                                    color: title ==
                                            snapshot.data.elementAt(index).name
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
