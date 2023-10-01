import 'package:flutter/material.dart';
import 'package:mvvm_base/ui/shared/color_manager.dart';

class ThemeManager with ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light;

  get themMode => _themeMode;

  toggleThem(bool isDark){
    _themeMode = isDark?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
}

class CustomAppThemeLight {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: AppColors.black,
      primaryColorLight: AppColors.lightGrey,
      colorScheme: theme.colorScheme.copyWith(secondary: AppColors.red),
      bottomAppBarColor: AppColors.lightGrey,
      backgroundColor: AppColors.background,
      dialogBackgroundColor: AppColors.backgroundLight,
      errorColor: AppColors.red,
      dividerColor: Colors.transparent,
      appBarTheme: theme.appBarTheme.copyWith(
        color: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.black),
        toolbarTextStyle: theme.textTheme
            .copyWith(
          caption: const TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
            .bodyText2,
        titleTextStyle: theme.textTheme
            .copyWith(
          caption: const TextStyle(
            color: AppColors.black,
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
            .headline6,
      ),
      textTheme: theme.textTheme
          .copyWith(
        headline1: theme.textTheme.headline1?.copyWith(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        //product price
        headline2: theme.textTheme.headline2?.copyWith(
          color: AppColors.lightGrey,
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        headline3: theme.textTheme.headline3?.copyWith(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        //product title
        headline4: theme.textTheme.headline4?.copyWith(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Montserrat',
        ),
        headline5: theme.textTheme.headline5?.copyWith(
          fontSize: 48,
          color: AppColors.white,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w900,
        ),
        headline6: theme.textTheme.headline6?.copyWith(
          fontSize: 24,
          color: AppColors.black,
          fontWeight: FontWeight.w900,
          fontFamily: 'Montserrat',
        ),
        subtitle1: theme.textTheme.headline5?.copyWith(
          fontSize: 24,
          color: AppColors.darkGrey,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        subtitle2: theme.textTheme.headline5?.copyWith(
          fontSize: 18,
          color: AppColors.black,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        button: theme.textTheme.button?.copyWith(
          fontSize: 14,
          color: AppColors.white,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        caption: theme.textTheme.caption?.copyWith(
          fontSize: 34,
          color: AppColors.black,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        bodyText1: theme.textTheme.bodyText1?.copyWith(
          color: AppColors.lightGrey,
          fontSize: 11,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodyText2: theme.textTheme.bodyText2?.copyWith(
          color: AppColors.black,
          fontSize: 11,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      )
          .apply(fontFamily: 'Montserrat'),
      buttonTheme: theme.buttonTheme.copyWith(
        minWidth: 50,
        buttonColor: AppColors.red,
      ),
    );
  }
}

class CustomAppThemeDark {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: AppColors.black,
      primaryColorLight: AppColors.lightGrey,
      colorScheme: theme.colorScheme.copyWith(secondary: AppColors.red),
      bottomAppBarColor: AppColors.lightGrey,
      backgroundColor: AppColors.background,
      dialogBackgroundColor: AppColors.backgroundLight,
      errorColor: AppColors.red,
      dividerColor: Colors.transparent,
      appBarTheme: theme.appBarTheme.copyWith(
        color: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.black),
        toolbarTextStyle: theme.textTheme
            .copyWith(
          caption: const TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
            .bodyText2,
        titleTextStyle: theme.textTheme
            .copyWith(
          caption: const TextStyle(
            color: AppColors.black,
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
            .headline6,
      ),
      textTheme: theme.textTheme
          .copyWith(
        headline1: theme.textTheme.headline1?.copyWith(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        //product price
        headline2: theme.textTheme.headline2?.copyWith(
          color: AppColors.lightGrey,
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        headline3: theme.textTheme.headline3?.copyWith(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        //product title
        headline4: theme.textTheme.headline4?.copyWith(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Montserrat',
        ),
        headline5: theme.textTheme.headline5?.copyWith(
          fontSize: 48,
          color: AppColors.white,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w900,
        ),
        headline6: theme.textTheme.headline6?.copyWith(
          fontSize: 24,
          color: AppColors.black,
          fontWeight: FontWeight.w900,
          fontFamily: 'Montserrat',
        ),
        subtitle1: theme.textTheme.headline5?.copyWith(
          fontSize: 24,
          color: AppColors.darkGrey,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        subtitle2: theme.textTheme.headline5?.copyWith(
          fontSize: 18,
          color: AppColors.black,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        button: theme.textTheme.button?.copyWith(
          fontSize: 14,
          color: AppColors.white,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        caption: theme.textTheme.caption?.copyWith(
          fontSize: 34,
          color: AppColors.black,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        bodyText1: theme.textTheme.bodyText1?.copyWith(
          color: AppColors.lightGrey,
          fontSize: 11,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodyText2: theme.textTheme.bodyText2?.copyWith(
          color: AppColors.black,
          fontSize: 11,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      )
          .apply(fontFamily: 'Montserrat'),
      buttonTheme: theme.buttonTheme.copyWith(
        minWidth: 50,
        buttonColor: AppColors.red,
      ),
    );
  }
}