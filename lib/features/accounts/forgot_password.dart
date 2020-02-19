import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_field.dart';
import 'package:ocean_mobile/components/custom_form.dart';
import 'package:openapi/api.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  RippleOceanServicesFeaturesAccountsForgotPasswordRequest model =
      new RippleOceanServicesFeaturesAccountsForgotPasswordRequest();

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
              Padding(padding: EdgeInsets.only(top: 50)),
              CustomButton(
                  name: 'submit', child: Text('Reset password'), onPressed: submit),
            ])),
      ),
    );
  }

  void submit() async {
    var api = new AccountsApi();
    var res = await api.apiAccountsForgotPasswordPost(
        rippleOceanServicesFeaturesAccountsForgotPasswordRequest: model);
    if (res != null) {
      Navigator.of(context).pushNamed('/resetpassword');
    }
  }
}
