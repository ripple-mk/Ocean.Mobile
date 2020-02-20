import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_drawer.dart';
import 'package:ocean_mobile/components/loading.dart';
import 'package:ocean_mobile/custom_colors.dart';
import 'package:ocean_mobile/models/question.dart';
import 'package:ocean_mobile/services/questions_service.dart';
import 'package:openapi/api.dart';

class Questionnaire extends StatefulWidget {
  final String resultId;
  Questionnaire(this.resultId);

  @override
  QuestionnaireState createState() => QuestionnaireState();
}

class QuestionnaireState extends State<Questionnaire> {
  double currentProgress() =>
      questions.length < 1 ? 0 : currentQuestionIndex / questions.length;
  int currentQuestionIndex = 1;
  Question currentQuestion;
  final QuestionsService questionsService = new QuestionsService();

  List<Question> questions = new List<Question>();

  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() async {
    questions.clear();
    questions = await questionsService.loadQuestions();
    currentQuestion = questions.first;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestion == null) return Loading();
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
                                Text(currentQuestionIndex.toString(),
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
                                child: Text(currentQuestion.text,
                                    style: TextStyle(
                                        color: CustomColors.NotBlack,
                                        fontSize: 24,
                                        height: 1.5)))
                          ])),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Container(
                        alignment: Alignment.center,
                        child: Text(currentQuestion.valueName(),
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
                              currentQuestion.answerValue = val.round();
                            });
                          },
                          value: currentQuestion.answerValue.roundToDouble()),
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
                                  onPressed: currentQuestionIndex == 1
                                      ? null
                                      : previousQuestion,
                                )),
                                Padding(padding: EdgeInsets.only(left: 50)),
                                questions.length != currentQuestionIndex
                                    ? Expanded(
                                        child: CustomButton(
                                        color: Colors.white,
                                        textColor: CustomColors.Blue,
                                        borderColor: CustomColors.Blue,
                                        child: Text('Next'),
                                        onPressed: nextQuestion,
                                      ))
                                    : Expanded(
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

  void nextQuestion() async {
    var q = await questionsService.nextQuestion(currentQuestion);
    if (q == null) return;
    setState(() {
      currentQuestionIndex++;
      currentQuestion = q;
    });
  }

  void previousQuestion() async {
    var q = await questionsService.previousQuestion(currentQuestion);
    if (q == null) return;
    setState(() {
      currentQuestionIndex--;
      currentQuestion = q;
    });
  }

  void complete() async {
    var answers = await questionsService.loadQuestions();
    var api = ResultsApi();
    var model = RippleOceanServicesFeaturesResultsCompleteRequest();
    model.resultId = widget.resultId;
    model.answers = answers.map((a) {
      var answer = RippleOceanServicesFeaturesResultsCompleteRequestAnswer();
      answer.questionId = a.id;
      answer.value = a.answerValue;
      return answer;
    }).toList();
    var res = await api.apiResultsCompleteQuestionnairePost(
        rippleOceanServicesFeaturesResultsCompleteRequest: model);
    if (res == null) return;

    questionsService.reset();
    Navigator.of(context).pushReplacementNamed('/result');
  }
}
