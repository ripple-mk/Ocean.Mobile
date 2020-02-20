import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_field.dart';
import 'package:ocean_mobile/components/custom_form.dart';
import 'package:ocean_mobile/custom_colors.dart';

import 'package:openapi/api.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var model = RippleOceanServicesFeaturesAccountsLoginRequest();
  final storage = new FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: CustomForm(children: <Widget>[
              SvgPicture.asset('assets/images/artwork.svg',
                  width: 180, height: 180),
              Padding(padding: EdgeInsets.only(top: 30)),
              CustomTextField(
                  fieldName: 'EmailAddress',
                  keyboard: TextInputType.emailAddress,
                  placeholder: "Email address",
                  initVal: () => model?.emailAddress,
                  onValueChanged: (val) {
                    model.emailAddress = val;
                  }),
              Padding(padding: EdgeInsets.only(top: 30)),
              CustomTextField(
                  fieldName: 'Password',
                  isPassword: true,
                  action: TextInputAction.done,
                  initVal: () => model?.password,
                  placeholder: "Password",
                  onValueChanged: (val) =>
                      setState(() => model.password = val)),
              Padding(padding: EdgeInsets.only(top: 20)),
              GestureDetector(
                  child: Text('Forgot your password?', style: TextStyle(color: CustomColors.Blue, fontStyle: FontStyle.italic)), onTap: () => Navigator.of(context).pushNamed('/forgotpassword')),
              Padding(padding: EdgeInsets.only(top: 50)),
              CustomButton(
                  name: 'submit', child: Text('Login'), onPressed: submit),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text('——————   or   ——————',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: CustomColors.Blue)),
              Padding(padding: EdgeInsets.only(top: 20)),
              CustomButton(
                  child: Text('Register'),
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil('/register', (r) => r == null),
                  color: CustomColors.LightBlue)
            ])),
      ),
    );
  }

  void submit() async {
    var api = new AccountsApi();
    var res = await api.apiAccountsLoginPost(
        rippleOceanServicesFeaturesAccountsLoginRequest: model);
    if (res != null) {
      storage.write(key: 'token', value: res.token);
      storage.write(key: 'accountId', value: res.userId);
      storage.write(key: 'username', value: res.username);
      ApiClient.token = res.token;
      Navigator.of(context).pushNamedAndRemoveUntil('/start', (r) => r == null);
    }
  }
}
