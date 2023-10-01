import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mvvm_base/core/view_model/locale_provider.dart';
import 'package:mvvm_base/l10n/generated/l10n.dart';
import 'package:mvvm_base/locator.dart';
import 'package:mvvm_base/ui/route/router.dart';
import 'package:mvvm_base/ui/shared/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

ThemeManager _manager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: LocaleProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Provider Architecture',
        theme: CustomAppThemeLight.of(context),
        darkTheme: CustomAppThemeDark.of(context),
        themeMode: _manager.themMode,
        initialRoute: '/splash',
        onGenerateRoute: MainRouter.generateRoute,
        localizationsDelegates: const [
          IntlStrings.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: IntlStrings.delegate.supportedLocales,
      ),
    );
  }
}
