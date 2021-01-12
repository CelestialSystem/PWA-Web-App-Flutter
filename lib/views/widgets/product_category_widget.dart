import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_optics/models/products.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/utils/styles.dart';

class ProductCategoryWidget extends BaseStatelessWidget {
  Future<List<Products>> _loadFromAsset() async {
    return productsFromJson(
        await rootBundle.loadString("lib/resources/assets/products.json"));
  }

  @override
  Widget setView(BuildContext context) {
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
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width(16),
                                            vertical: height(16)),
                                        child: Text(
                                          e.name,
                                          style: Style.caption.copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ))
                                .toList(),
                          )
                        : InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width(16), vertical: height(16)),
                              child: Text(
                                snapshot.data.elementAt(index).name,
                                style: Style.subtitle1
                                    .copyWith(color: Colors.black),
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
