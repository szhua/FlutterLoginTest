

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:login_demo/api.dart';
import 'package:login_demo/viewmodels/base_model.dart';

class LoginViewModel extends BaseModel{

  LoginViewModel({@required Api api}):super(api:api);
  Timer _timer ;
  int _countdownTime =0 ;

  Future<void> senSms(String mobile) async{
    await  api.sendSms(mobile);
  }

  Future<bool> login(String mobile ,String sms) async{
    return  await api.login(mobile, sms) != null ;
  }

  @override
  void dispose() {
    cancelTimer();
    super.dispose();
  }

  void startCountDown(){
     countdownTime = 60 ;
     if(_timer==null){
         _timer =Timer.periodic(Duration(seconds: 1), (timer) {
           countdownTime-- ;
           if(countdownTime ==0 ){
              cancelTimer();
           }
         });
     }
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }

  int get countdownTime => _countdownTime;

  set countdownTime(int value) {
    _countdownTime = value;
    notifyListeners();
  }


}