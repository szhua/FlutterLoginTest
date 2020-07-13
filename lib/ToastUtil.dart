

import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class ToastUtil {

  static showNormalToast(String msg) {
    var w = Center(
      child: Container(
        padding: const EdgeInsets.all(5),
        color: Colors.black.withOpacity(0.7),
        child: Row(
          children: <Widget>[
            Text(
              msg??'EmptyMsg',
              style: TextStyle(color: Colors.white),
            ),
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
    showToastWidget(w);
  }


  // 新方法名称
  static showMsg(msg,{Map options}){
    // 默认属性
    Map defaultOptions = {
      // 弹框持续时间2秒
      "duration":Duration(seconds: 2),
      // 弹框显示位置
      "position":ToastPosition.center,
      // 弹框背景颜色
      "backgroundColor":Colors.black.withOpacity(0.8),
      // 弹框圆角
      "radius":6.0,
      // 弹框字体样式
      "textStyle":TextStyle(fontSize: 16),
    };
    // 如果自定义了配置，则合并默认配置
    if(options!=null && options.isNotEmpty){
      defaultOptions.addEntries(options.entries);
    }
    // 插件方法
    showToast(
      msg,
      duration:defaultOptions["duration"],
      position: defaultOptions["position"],
      backgroundColor: defaultOptions["backgroundColor"],
      radius: defaultOptions["radius"],
      textStyle: defaultOptions["textStyle"],
    );
  }


}