import 'package:flutter/material.dart';
import 'package:login_demo/api.dart';
import 'package:login_demo/view_state.dart';

class BaseModel extends ChangeNotifier {
  Api api;
  bool disposed = false;
  BaseModel({@required Api api}) : api = api;

  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    disposed = true;
  }

  @override
  void notifyListeners() {
    if (!disposed) {
      super.notifyListeners();
    }
  }
}
