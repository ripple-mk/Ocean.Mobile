import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_field.dart';
import 'package:ocean_mobile/components/custom_form.dart';
import 'package:openapi/api.dart';

import '../../custom_colors.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RippleOceanServicesFeaturesAccountsRegisterRequest model = RippleOceanServicesFeaturesAccountsRegisterRequest();
  final storage = new FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: CustomForm(
                children: <Widget>[
                      SvgPicture.asset('assets/images/artwork.svg',
                          width: 180, height: 180),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      CustomTextField(
                          fieldName: 'Email',
                          keyboard: TextInputType.emailAddress,
                          initVal: () => model?.email,
                          placeholder: "Email address",
                          onValueChanged: (val) => model.email = val),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      CustomTextField(
                          fieldName: 'Password',
                          placeholder: "Password",
                          isPassword: true,
                          initVal: () => model?.password,
                          onValueChanged: (val) => model.password = val),
                          Padding(padding: EdgeInsets.only(top: 30)),
                      CustomTextField(
                          fieldName: 'ConfirmPassword',
                          isPassword: true,
                          initVal: () => model?.confirmPassword,
                          placeholder: "Confirm Password",
                          onValueChanged: (val) => model.confirmPassword = val),
                      Padding(padding: EdgeInsets.only(top: 50)),
                      CustomButton(child: Text('Register'), onPressed: submit),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('——————   or   ——————',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: CustomColors.Blue)),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      CustomButton(
                          child: Text('Login'),
                          onPressed: () =>
                              Navigator.of(context).pushNamedAndRemoveUntil('/login', (r) => r == null),
                          color: CustomColors.LightBlue)
                    ])),
      ),
    );
  }

  void submit() async {
    var api = AccountsApi();
    var res = await api.apiAccountsRegisterPost(rippleOceanServicesFeaturesAccountsRegisterRequest: model);
    if (res != null) {
      storage.write(key: 'token', value: res.token);
      storage.write(key: 'accountId', value: res.userId);
      storage.write(key: 'username', value: res.username);
      ApiClient.token = res.token;
      Navigator.of(context).pushNamedAndRemoveUntil('/start', (r) => r == null);
    }
  }
}
