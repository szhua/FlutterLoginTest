import 'package:flutter/material.dart';
import 'package:login_demo/route_path.dart';
import 'package:login_demo/views/HomeView.dart';
import 'package:login_demo/views/LoginView.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.HOME:
        return MaterialPageRoute(builder: (_) => HomeView());
        break;
      case RoutePaths.LOGIN:
        return MaterialPageRoute(builder: (_) => LoginView());
        break;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(title: Text('未找到对应的界面')),
                  body: Center(child: Text('未找到对应的界面')),
                ));
    }
  }
}
