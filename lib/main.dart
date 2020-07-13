import 'package:flutter/material.dart';
import 'package:login_demo/Router.dart';
import 'package:login_demo/provider_setup.dart';
import 'package:login_demo/route_path.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      dismissOtherOnShow: true,
        
      child: MultiProvider(
        providers: providers,
        child: MaterialApp(
            title: 'FluuterAppTest',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity),
            initialRoute: RoutePaths.LOGIN,
            onGenerateRoute: Router.generateRoute),
    ));
  }
}
