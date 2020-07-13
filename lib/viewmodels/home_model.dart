
import 'package:flutter/foundation.dart';
import 'package:login_demo/api.dart';
import 'package:login_demo/view_state.dart';
import 'package:login_demo/viewmodels/base_model.dart';

class HomeViewModel extends BaseModel{


  HomeViewModel({@required Api api}):super(api:api);

  Future<void> loadData() async{
    print('加载首页数据');
    setState(ViewState.Busy);
    await Future.delayed(Duration(seconds: 2));
    setState(ViewState.Idle);
    print('首页数据加载完成');
  }




}