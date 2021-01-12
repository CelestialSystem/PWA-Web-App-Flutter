import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:universal_optics/states/product_states.dart';
import 'package:universal_optics/views/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Injector(
      inject: [Inject(() => ProductStates())],
      builder: (context) => MaterialApp(
        title: 'Universal Optics',
        theme: ThemeData(
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blue.shade700,
          ),
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(),
      ),
    );
  }
}
