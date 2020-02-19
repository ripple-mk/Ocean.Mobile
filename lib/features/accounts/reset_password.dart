import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_field.dart';
import 'package:ocean_mobile/components/custom_form.dart';
import 'package:openapi/api.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  RippleOceanServicesFeaturesAccountsResetPasswordRequest model =
      new RippleOceanServicesFeaturesAccountsResetPasswordRequest();
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
                  fieldName: 'ResetCode',
                  placeholder: "Reset password code",
                  initVal: () => model?.resetCode,
                  onValueChanged: (val) {
                    model.resetCode = val;
                  }),
              Padding(padding: EdgeInsets.only(top: 30)),
              CustomTextField(
                  fieldName: 'NewPassword',
                  placeholder: "New Password",
                  initVal: () => model?.newPassword,
                  onValueChanged: (val) => model.newPassword = val),
              Padding(padding: EdgeInsets.only(top: 30)),
              CustomTextField(
                  fieldName: 'ConfirmNewPassword',
                  placeholder: "Confirm New Password",
                  initVal: () => model?.confirmNewPassword,
                  onValueChanged: (val) => model.confirmNewPassword = val),
              Padding(padding: EdgeInsets.only(top: 50)),
              CustomButton(
                  name: 'submit',
                  child: Text('Set new password'),
                  onPressed: submit),
            ])),
      ),
    );
  }

  void submit() async {
    var api = new AccountsApi();
    var res = await api.apiAccountsResetPasswordPost(
        rippleOceanServicesFeaturesAccountsResetPasswordRequest: model);
    if (res != null) {
      storage.write(key: 'token', value: res.token);
      storage.write(key: 'accountId', value: res.userId);
      storage.write(key: 'username', value: res.username);
      Navigator.of(context).pushNamedAndRemoveUntil('/start', (r) => r == null);
    }
  }
}
