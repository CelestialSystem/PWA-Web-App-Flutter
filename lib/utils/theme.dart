// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:universal_optics/utils/styles.dart';

// import 'adaptive_dimensions_flutter.dart';
// import 'colors.dart';

// abstract class ApplicationTheme {
//   AdaptiveDimensions get dimensions;

//   final BuildContext buildContext;

//   // It's going to be rarely used
//   ThemeData get themeData;

//   ThemeColors get colors;

//   Style get textTheme;

//   ApplicationTheme(this.buildContext);

//   static void setUpStatusBarColors() {
//     // TODO: If Dark theme is there (isDarkThemeEnabled ? LightApplicationTheme.forceLightStatusBar() : LightApplicationTheme.forceLightStatusBar();)
//     LightApplicationTheme.forceLightStatusBar();
//     // ignore: unused_local_variable
//     var mode = isDarkThemeEnabled;
//   }

//   static bool get isDarkThemeEnabled =>
//       WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
// }

// class LightApplicationTheme extends ApplicationTheme {
//   LightApplicationTheme(BuildContext buildContext) : super(buildContext);

//   static void forceLightStatusBar() {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       systemNavigationBarColor: Colors.black,
//       systemNavigationBarDividerColor: null,
//       statusBarColor: Colors.white,
//       systemNavigationBarIconBrightness: Brightness.light,
//       statusBarIconBrightness: Brightness.dark,
//       statusBarBrightness: Brightness.light,
//     ));
//   }

//   @override
//   ThemeData get themeData => ThemeData(
//       brightness: Brightness.light,
//       primaryColor: colors.primaryColorBlue,
//       appBarTheme: AppBarTheme(brightness: Brightness.light),
//       accentColor: colors.accentColorRed,
//       cardColor: colors.cardBackground,
//       primaryColorLight: colors.primaryColorBlue,
//       fontFamily: 'Montserrat',
//       backgroundColor: Colors.white,
//       cardTheme: CardTheme(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(4),
//         ),
//         color: colors.cardBackground,
//       ),
//       buttonTheme: ButtonThemeData(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         alignedDropdown: true,
//         height: 48,
//         buttonColor: colors.primaryColorBlue,
//         textTheme: ButtonTextTheme.primary,
//       ));

//   @override
//   ThemeColors get colors => LightThemeColors();

//   @override
//   Style get textTheme => LightTextTheme(dimensions, colors);

//   @override
//   AdaptiveDimensions get dimensions =>
//       AdaptiveDimensions(buildContext, refWidth, refHeight);
// }
