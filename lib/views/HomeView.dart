import 'package:flutter/material.dart';
import 'package:login_demo/view_state.dart';
import 'package:login_demo/viewmodels/home_model.dart';
import 'package:login_demo/views/base_view.dart';
import 'package:provider/provider.dart';
import '../api.dart';

class HomeView extends StatelessWidget {
  static const String routeName = '/homeView.dart';

  @override
  Widget build(BuildContext context) {
     return BaseView<HomeViewModel>(
          onModelReady: (model) async{
             model.loadData();
          },
          model:HomeViewModel(api: Provider.of<Api>(context)),
          builder: (context,model,child){
             return Scaffold(
               appBar: AppBar(title: Text('APP首页'),),
               body: Container(
                 child: model.state==ViewState.Busy?Center(
                   child: CircularProgressIndicator(),
                 ):Center(
                   child: Text('APP首页'),
                 ),
               ),
             );
          },
     );
  }
  
  
  
}

