// Created by Dipendra Sharma (dipendra.sharma@celestialsys.com) on 21-May-2020 at Celestial Systems Pvt. Ltd.
import 'package:flutter/material.dart';

abstract class ThemeColors {
  //Primary Theme Colours
  Color get primaryColorBlue;

  Color get accentColorRed;

  Color get cardBackground;

  Color get primaryTextColor;

  Color get textColorBlack;

  Color get borderColor;

  Color get shadowColor;

  Color get buttonTextColor;

  Color get textColorWhite;

  //Calendar Colours
  Color get notAvailableColor;

  Color get dateTextColor;

  Color get holidayColor;

  //Event Colours
  Color get eventColor;

  Color get selectedShadow;

  Color get urgentColor;

  Color get celebratoryColor;

  Color get importantColor;

  //Time Log
  Color get logTimeText;

  Color get logTimeDateBackground;

  Color get logTimeTaskCompleteBackground;

  Color get logTimeBottomBar;
  
  //Onboarding Colours
  Color get onboardingContinueColor;

  //Dashboard Colours
  Color get bottomShadow;

  //Add Post Colors
  Color get supportedFileTextColor;

  //View Post Colours
  Color get backButtonBorderColor;

  Color get bodyTextColor;

  Color get appBarColor;

  Color get selectedTabColor;

  Color get unselectedTabColor;
}

class LightThemeColors extends ThemeColors {
  @override
  Color get accentColorRed => Color(0xffED6663);

  @override
  Color get borderColor => Color(0xff7070701D);

  @override
  Color get cardBackground => Color(0xffF4F6FA);

  @override
  Color get celebratoryColor => Color(0xffFFA95F);

  @override
  Color get dateTextColor => Color(0xff4B4B4B);

  @override
  Color get eventColor => Color(0xff77A9FA);

  @override
  Color get holidayColor => Color(0xffFFE1C3);

  @override
  Color get importantColor => Color(0xffAF5FFF);

  @override
  Color get logTimeBottomBar => Color(0xffF4F4F5);

  @override
  Color get logTimeDateBackground => Color(0xffB6C9D9);

  @override
  Color get logTimeTaskCompleteBackground => Color(0xff8AB76E);

  @override
  Color get logTimeText => Color(0xff3C3D3E);

  @override
  Color get notAvailableColor => Color(0xffF4D4C8);

  @override
  Color get primaryColorBlue => Color(0xff0F4C81);

  @override
  Color get primaryTextColor => Color(0xff1B262C);

  @override
  Color get selectedShadow => Color(0xff00007E);

  @override
  Color get shadowColor => Color(0xff838383);

  @override
  Color get textColorBlack => Color(0xff484848);

  @override
  Color get urgentColor => Color(0xffFA7790);

  @override
  Color get buttonTextColor => Color(0xffffffff);

  @override
  Color get onboardingContinueColor => Color(0xffE9EFF4);

  @override
  Color get bottomShadow => Color(0xff00000012);

  @override
  Color get supportedFileTextColor => Color(0xffAAA7A7);

  @override
  Color get backButtonBorderColor => Color(0xff2E2B2B);

  @override
  Color get bodyTextColor => Color(0xff030303);

  @override
  Color get appBarColor => Color(0xffffffff);

  @override
  Color get textColorWhite => Color(0xffffffff);

  @override
  Color get selectedTabColor => Color(0xff000000);

  @override
  Color get unselectedTabColor => Color(0xff1b262c);
}
