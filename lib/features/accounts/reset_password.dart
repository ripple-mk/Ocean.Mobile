import 'package:flutter/material.dart';
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
                  keyboard: TextInputType.emailAddress,
                  placeholder: "Reset password code",
                  initVal: () => model?.resetCode,
                  onValueChanged: (val) {
                    model.resetCode = val;
                  }),
              Padding(padding: EdgeInsets.only(top: 30)),
              CustomTextField(
                  fieldName: 'NewPassword',
                  keyboard: TextInputType.text,
                  placeholder: "New Password",
                  onValueChanged: (val) {}),
              Padding(padding: EdgeInsets.only(top: 30)),
              CustomTextField(
                  fieldName: 'ConfirmNewPassword',
                  keyboard: TextInputType.emailAddress,
                  placeholder: "Confirm New Password",
                  onValueChanged: (val) {}),
              Padding(padding: EdgeInsets.only(top: 50)),
              CustomButton(
                  name: 'submit',
                  child: Text('Set password'),
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
      Navigator.of(context).pushNamedAndRemoveUntil('/start', (r) => r == null);
    }
  }
}
