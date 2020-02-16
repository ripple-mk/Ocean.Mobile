import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_field.dart';
import 'package:ocean_mobile/custom_colors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginFormKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Form(
                key: loginFormKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SvgPicture.asset('assets/images/artwork.svg',
                          width: 180, height: 180),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      CustomTextField(
                          fieldName: 'emailAddress',
                          keyboard: TextInputType.emailAddress,
                          placeholder: "Your email",
                          onValueChanged: (val) {}),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      CustomTextField(
                          fieldName: 'password',
                          keyboard: TextInputType.emailAddress,
                          placeholder: "Password",
                          onValueChanged: (val) {}),
                      Padding(padding: EdgeInsets.only(top: 50)),
                      CustomButton(child: Text('Login'), onPressed: submit),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('——————   or   ——————',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: CustomColors.Blue)),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      CustomButton(
                          child: Text('Register'),
                          onPressed: () =>
                              Navigator.of(context).pushNamedAndRemoveUntil('/register', (r) => r == null),
                          color: CustomColors.LightBlue)
                    ]))),
      ),
    );
  }

  void submit() {}
}
