import 'package:login_demo/models/user.dart';

class Api {
  Future<void> sendSms(String mobile) async {
    print('发送验证码');
    await Future.delayed(Duration(seconds: 1));
    print('发送成功');
  }

  Future<User> login(String username, String sms) async {
    print('登录中');
    await Future.delayed(Duration(seconds: 1));
    User user = User(1, "testUser");
    print('登录成功:$user');
    return user;
  }
}
