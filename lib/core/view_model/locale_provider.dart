
import 'package:flutter/material.dart';
import 'package:mvvm_base/core/enum/viewstate.dart';
import 'package:mvvm_base/core/view_model/base_view_model.dart';
import 'package:mvvm_base/l10n/generated/l10n.dart';

class LocaleProvider extends BaseViewModel {
  Locale _locale = const Locale.fromSubtags(languageCode: 'en');
  Locale get locale => _locale;

  void setLocale(Locale locale) async {
    if(!IntlStrings.delegate.supportedLocales.contains(locale)) return;
    _locale = locale;
    setState(ViewState.Idle);
  }
}