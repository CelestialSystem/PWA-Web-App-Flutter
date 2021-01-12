import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:universal_optics/states/product_states.dart';
import 'package:universal_optics/utils/base_stateful_widget.dart';
import 'package:universal_optics/utils/styles.dart';
import 'package:universal_optics/views/pages/company_profile_page.dart';
import 'package:universal_optics/views/pages/contact_us_page.dart';
import 'package:universal_optics/views/pages/home_page.dart';
import 'package:universal_optics/views/pages/products_page.dart';
import 'package:universal_optics/views/responsive/contact_us/contact_us.dart';
import 'package:universal_optics/views/responsive/footer/footer.dart';

class MainPage extends BaseStatefulWidget {
  MainPage({Key key}) : super(key);

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends BaseState<MainPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget setView(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: StateBuilder<ProductStates>(
          observe: () => RM.get<ProductStates>(),
          builder: (context, rm) => Container(
                width: width(1200),
                height: fullHeight(),
                child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      height: fullHeight(),
                      padding: EdgeInsets.symmetric(
                          horizontal: width(30), vertical: height(20)),
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            '${imagePath}uo_logo.png',
                            width: width(1000),
                            height: height(100),
                            fit: BoxFit.contain,
                          ),
                          Divider(),
                          SizedBox(
                            height: height(20),
                          ),
                          ListTile(
                              onTap: () {
                                rm.setState((s) =>
                                    s.setSelectedBody(HomePage(), 'HOME'));
                                Navigator.of(context).pop();
                              },
                              leading: Icon(
                                Icons.home,
                                color: rm.state.pageName == 'HOME'
                                    ? Colors.blue.shade700
                                    : Colors.black,
                              ),
                              title: Text(
                                'HOME',
                                style: Style.subtitle2.copyWith(
                                    color: rm.state.pageName == 'HOME'
                                        ? Colors.blue.shade700
                                        : Colors.black),
                              )),
                          SizedBox(
                            height: height(20),
                          ),
                          ListTile(
                            onTap: () {
                              rm.setState((s) => s.setSelectedBody(
                                  ProductsPage(), 'PRODUCTS'));
                              Navigator.of(context).pop();
                            },
                            leading: Icon(
                              Icons.dashboard,
                              color: rm.state.pageName == 'PRODUCTS'
                                  ? Colors.blue.shade700
                                  : Colors.black,
                            ),
                            title: Text(
                              'PRODUCTS',
                              style: Style.subtitle2.copyWith(
                                  color: rm.state.pageName == 'PRODUCTS'
                                      ? Colors.blue.shade700
                                      : Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: height(20),
                          ),
                          ListTile(
                              onTap: () {
                                rm.setState((s) => s.setSelectedBody(
                                    CompanyProfilePage(), 'COMPANY PROFILE'));
                                Navigator.of(context).pop();
                              },
                              leading: Icon(
                                Icons.business,
                                color: rm.state.pageName == 'COMPANY PROFILE'
                                    ? Colors.blue.shade700
                                    : Colors.black,
                              ),
                              title: Text(
                                'COMPANY PROFILE',
                                style: Style.subtitle2.copyWith(
                                    color:
                                        rm.state.pageName == 'COMPANY PROFILE'
                                            ? Colors.blue.shade700
                                            : Colors.black),
                              )),
                          SizedBox(
                            height: height(20),
                          ),
                          ListTile(
                              onTap: () {
                                rm.setState((s) => s.setSelectedBody(
                                    ContactUsPage(), 'CONTACT US'));
                                Navigator.of(context).pop();
                              },
                              leading: Icon(
                                Icons.phone_android,
                                color: rm.state.pageName == 'CONTACT US'
                                    ? Colors.blue.shade700
                                    : Colors.black,
                              ),
                              title: Text(
                                'CONTACT US',
                                style: Style.subtitle2.copyWith(
                                    color: rm.state.pageName == 'CONTACT US'
                                        ? Colors.blue.shade700
                                        : Colors.black),
                              )),
                        ],
                      ),
                    )),
              )),
      body: StateBuilder<ProductStates>(
        observe: () => RM.get<ProductStates>(),
        builder: (context, rm) => Container(
          width: fullWidth(),
          height: fullHeight(),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getNavBar(),
                rm.state.selectedBody,
                SizedBox(
                  height: height(100),
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getNavBar() {
    return ScreenTypeLayout(
      mobile: _getNavBarMobile(),
      tablet: _getNavBarDesktop(),
      desktop: _getNavBarDesktop(),
    );
  }

  Widget _getNavBarDesktop() {
    return StateBuilder<ProductStates>(
      observe: () => RM.get<ProductStates>(),
      builder: (context, rm) => Container(
        padding:
            EdgeInsets.symmetric(horizontal: width(140), vertical: height(40)),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        '${imagePath}uo_logo.png',
                        width: width(220),
                        height: height(80),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 0.5,
                    width: width(20),
                  ),
                  Flexible(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          "Contact",
                          style: Style.subtitle2,
                        ),
                        subtitle: Text(
                          "+91 9837039970",
                          style: Style.caption,
                        ),
                      )),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 0.5,
                    width: 20,
                  ),
                  Flexible(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          "E-mail",
                          style: Style.subtitle2,
                        ),
                        subtitle: Text(
                          "uniopt@hotmail.com",
                          style: Style.caption,
                        ),
                      )),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 0.5,
                    width: 20,
                  ),
                  Flexible(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          "Location",
                          style: Style.subtitle2,
                        ),
                        subtitle: Text(
                          "D-1, Industrial Estate, Roorkee, Uttarakhand, India - 247667",
                          style: Style.caption,
                        ),
                      )),
                ],
              ),
            ),
            Divider(
              thickness: 0.8,
            ),
            SizedBox(
              height: height(8),
            ),
            Row(
              children: [
                FlatButton(
                    onPressed: () {
                      rm.setState((s) => s.setSelectedBody(HomePage(), 'HOME'));
                    },
                    child: Text(
                      'HOME',
                      style: Style.subtitle2.copyWith(
                          color: rm.state.pageName == 'HOME'
                              ? Colors.blue.shade700
                              : Colors.black),
                    )),
                SizedBox(
                  width: width(85),
                ),
                FlatButton(
                    onPressed: () {
                      rm.setState(
                          (s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
                    },
                    child: Text(
                      'PRODUCTS',
                      style: Style.subtitle2.copyWith(
                          color: rm.state.pageName == 'PRODUCTS'
                              ? Colors.blue.shade700
                              : Colors.black),
                    )),
                SizedBox(
                  width: width(85),
                ),
                FlatButton(
                    onPressed: () {
                      rm.setState((s) => s.setSelectedBody(
                          CompanyProfilePage(), 'COMPANY PROFILE'));
                    },
                    child: Text(
                      'COMPANY PROFILE',
                      style: Style.subtitle2.copyWith(
                          color: rm.state.pageName == 'COMPANY PROFILE'
                              ? Colors.blue.shade700
                              : Colors.black),
                    )),
                SizedBox(
                  width: width(85),
                ),
                FlatButton(
                    onPressed: () {
                      rm.setState(
                          (s) => s.setSelectedBody(ContactUs(), 'CONTACT US'));
                    },
                    child: Text(
                      'CONTACT US',
                      style: Style.subtitle2.copyWith(
                          color: rm.state.pageName == 'CONTACT US'
                              ? Colors.blue.shade700
                              : Colors.black),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getNavBarMobile() {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width(16), vertical: height(16)),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Builder(
              builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  }),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Image.asset(
                '${imagePath}uo_logo.png',
                width: width(150),
                height: height(80),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
