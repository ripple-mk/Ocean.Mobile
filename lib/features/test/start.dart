import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_drawer.dart';
import 'package:ocean_mobile/custom_colors.dart';
import 'package:ocean_mobile/models/question.dart';
import 'package:ocean_mobile/services/questions_service.dart';
import 'package:openapi/api.dart';

class StartTest extends StatefulWidget {
  @override
  _StartTestState createState() => _StartTestState();
}

class _StartTestState extends State<StartTest> {
  final QuestionsService questionsService = new QuestionsService();
  final FlutterSecureStorage storage = new FlutterSecureStorage();

  @override void initState() {
    storage.read(key: 'token').then((token) {
      ApiClient.token = token;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Center(
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
        ));
  }

  void start() async {
    var api = ResultsApi();
    var res = await api.apiResultsStartQuestionnairePost();
    if (res != null) {
      await questionsService
          .setQuestions(res.questions.map((q) => Question(q.id, q.text, q.value, q.position)).toList());
      Navigator.of(context).pushNamed('/questionnaire', arguments: res.id);
    }
  }
}
