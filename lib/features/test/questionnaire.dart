import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_drawer.dart';
import 'package:ocean_mobile/custom_colors.dart';

class Questionnaire extends StatefulWidget {
  @override
  QuestionnaireState createState() => QuestionnaireState();
}

class QuestionnaireState extends State<Questionnaire> {
  int answerValue = 3;
  String title = "Neutral";
  double currentProgress() => questionCount / 3;
  int questionCount = 1;

  final questions = [
    "I often forget to put  things back in their proper place.",
    "I shirk my duties",
    "I Have frequent mood swings"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            LinearProgressIndicator(
                value: currentProgress(), backgroundColor: Color(0xFFC0CEED)),
            Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 15)),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Wrap(
                              direction: Axis.horizontal,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              children: <Widget>[
                                Text(questionCount.toString(),
                                    style: TextStyle(
                                        color: CustomColors.Blue,
                                        fontWeight: FontWeight.w900)),
                                Text(' / ' + questions.length.toString(),
                                    style: TextStyle(
                                        color: Color(0xFF819EDB),
                                        fontWeight: FontWeight.w900)),
                              ])),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Container(
                          height: 120,
                          child: Stack(children: <Widget>[
                            SvgPicture.asset('assets/images/quotes.svg',
                                width: 54, height: 30),
                            Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Text(
                                    questions[questionCount - 1],
                                    style: TextStyle(
                                        color: CustomColors.NotBlack,
                                        fontSize: 24,
                                        height: 1.5)))
                          ])),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Container(
                        alignment: Alignment.center,
                        child: Text(title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: CustomColors.Blue,
                                fontSize: 42,
                                height: 1.2,
                                shadows: [
                                  Shadow(
                                      color: CustomColors.LighterBlue,
                                      offset: Offset(4, 4))
                                ])),
                        height: 100,
                      ),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Slider(
                          min: 1.0,
                          max: 5.0,
                          onChanged: (val) {
                            setState(() {
                              answerValue = val.round();
                              updateTitle();
                            });
                          },
                          value: answerValue.roundToDouble()),
                      Padding(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                            Expanded(
                              child: CustomButton(
                              color: Colors.white,
                              textColor: CustomColors.Blue,
                              borderColor: CustomColors.Blue,
                              child: Text('Previous'),
                              onPressed: previousQuestion,
                            )),
                      Padding(padding: EdgeInsets.only(left: 50)),
                            questions.length != questionCount ? Expanded(
                              child: CustomButton(
                              color: Colors.white,
                              textColor: CustomColors.Blue,
                              borderColor: CustomColors.Blue,
                              child: Text('Next'),
                              onPressed: nextQuestion,
                            ))
                            :
                            Expanded(
                              child: CustomButton(
                              child: Text('Complete'),
                              onPressed: complete,
                            ))
                          ]),
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0))
                          
                    ])),
          ]),
    );
  }

  void updateTitle() {
    switch (answerValue) {
      case 2:
        title = "Slightly\ndisagree";
        return;
      case 3:
        title = "Neutral";
        return;
      case 4:
        title = "Slightly\nagree";
        return;
      case 5:
        title = "Agree";
        return;
      default:
        title = "Disagree";
        return;
    }
  }

  void nextQuestion() {
    if (questionCount == questions.length) return;
    questionCount++;
    setState(() {
      answerValue = 3;
      updateTitle();
    });
  }

  void previousQuestion() {
    if (questionCount == 1) return;
    questionCount--;
    setState(() {
      answerValue = 3;
      updateTitle();
    });
  }

  void complete() {
    Navigator.of(context).pushNamedAndRemoveUntil('/result', (r) => r == null);
  }
}
