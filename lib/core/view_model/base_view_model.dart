import 'package:flutter/material.dart';
import 'package:mvvm_base/core/enum/viewstate.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
