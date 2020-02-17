import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_drawer.dart';
import 'package:ocean_mobile/custom_colors.dart';

class StartTest extends StatefulWidget {
  @override
  _StartTestState createState() => _StartTestState();
}

class _StartTestState extends State<StartTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Center(
          child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/images/artwork.svg',
                  width: 180, height: 180),
              Padding(padding: EdgeInsets.only(top: 30)),
              Text(
                  'This is a personality test, it will help you\nunderstand why you act the way that you do\nand how your personality is structured.\nMove the slider to set how much you\ndisagree or agree with each statement.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: CustomColors.Blue, fontSize: 16, height: 2)),
              Padding(padding: EdgeInsets.only(top: 80)),
              Padding(
                  child: CustomButton(
                      child: Text('Start test!'), onPressed: start),
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0))
            ]),
      )),
    );
  }

  void start() {
    Navigator.of(context).pushNamed('/questionnaire');
  }
}
