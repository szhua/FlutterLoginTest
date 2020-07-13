import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_demo/ToastUtil.dart';
import 'package:login_demo/api.dart';
import 'package:login_demo/route_path.dart';
import 'package:login_demo/viewmodels/login_model.dart';
import 'package:login_demo/views/base_view.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewPageState createState() => _LoginViewPageState();
}

class _LoginViewPageState extends State<LoginView> {
  final mobileTextController =   TextEditingController() ;
  final smsTextController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  BaseView<LoginViewModel>(
       model: LoginViewModel(api: Provider.of<Api>(context)),
       onModelReady: (model){},
       builder: (context,model ,child){
         return Scaffold(
           backgroundColor: Color(0xFFF5F5F5),
           appBar: AppBar(
             title: Text('登录/注册'),
           ),
           body: _bulidLoginContent(context,model),
         );
       },
    );
  }

  _bulidLoginContent(BuildContext context, LoginViewModel model) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             _buildTitle(context,model),
             SizedBox(height: 30),
            _buildSignArea(context,model),
            SizedBox(height: 50),
            _buildLoginBtn(context,model),
            SizedBox(height: 16,)
          ],
        )
      ],
    );

  }

   Widget _buildTitle(BuildContext context, LoginViewModel model) {
    return Column(
       children: <Widget>[
         Text('用户登录',style: TextStyle(fontSize: 22),),
         SizedBox(height: 8,),
         Text('ProviderLogin')
       ],
    );

  }

   Widget _buildSignArea(BuildContext context, LoginViewModel model) {
     return Container(
       width: 270,
       child: Column(
           children: <Widget>[
             _buildMobile(context,model),
             Container(
               height: 0.5,
               color: Color(0xFF6a6a6a),
             ),
             _buildSMS(context,model),
             Container(
               height: 0.5,
               color: Color(0xFF6a6a6a),
             ),
           ],

       ),
     );
  }

  Widget _buildLoginBtn(BuildContext context, LoginViewModel model) {
    return ButtonTheme(
      minWidth: 270,
      height: 45,
      buttonColor: Color(0xFF08ba07),
      child: RaisedButton(
        onPressed: () async {
          if(mobileTextController.text.length<11){
            ToastUtil.showNormalToast('请输入正确的手机号');
            return;
          }
          if(smsTextController.text.length<4){
            ToastUtil.showNormalToast('请输入短信验证码');
            return;
          }
          if (await model.login(mobileTextController.text, smsTextController.text)) {
            Navigator.of(context).pushNamed(RoutePaths.HOME);
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Text(
          '登录',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

 Widget _buildMobile(BuildContext context, LoginViewModel model) {
       return TextField(
           controller: mobileTextController,
           keyboardType: TextInputType.number,
           maxLength: 11,
           style: TextStyle(
             fontSize: 14,
             color: Color(0xFF191919),
           ),
           decoration: InputDecoration(
             border: InputBorder.none,
             counterText: '',
             hintText: '请输入手机号',
             hintStyle: TextStyle(
               fontSize: 14,
               color: Color(0xFFa5a5a5),
             ),
           ),
       );
  }


  void veryfyInput(LoginViewModel model) async{
    if(mobileTextController.text.length<10){
        ToastUtil.showMsg('当前手机号未填写');
        return ;
    }
    if (model.countdownTime == 0) {
      await model.senSms(mobileTextController.text);
      model.startCountDown();
    }

  }


 Widget  _buildSMS(BuildContext context, LoginViewModel model) {

       return Row(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             Expanded(child: TextField(
               keyboardType: TextInputType.number,
               controller: smsTextController,
               maxLength: 4,
               style: TextStyle(
                 fontSize: 14,
                 color: Color(0xFF191919),
               ),
               decoration: InputDecoration(
                 border: InputBorder.none,
                 counterText: '',
                 hintText: '请输入短信验证码',
                 hintStyle: TextStyle(
                   fontSize: 14,
                   color: Color(0xFFa5a5a5),
                 ),
               ),
             )),
             GestureDetector(
               onTap:(){
                 veryfyInput(model);
               },
               child:
               Text(
                 model.countdownTime > 0
                     ? '${model.countdownTime}秒后重新发送'
                     : '发送验证码',
                 style: TextStyle(
                   fontSize: 14,
                   color: model.countdownTime > 0
                       ? Color(0xFFa5a5a5)
                       : Color(0xFF191919),
                 ),
               ),
             )
           ],
       );


 }



}
