import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ocean_mobile/models/question.dart';

class QuestionsService {
  final storage = FlutterSecureStorage();
  List<Question> questions = List<Question>();
  final String storageKey = 'questions';

  Future answer(Question question, int answer) async {
    var q = questions.firstWhere((x) => x.id == question.id);
    if (q != null) await answerById(q.id, answer);
  }

  Future answerById(String id, int answer) async {
    var q = questions.firstWhere((x) => x.id == id);
    if (q == null) return;

    q.answerValue = answer;
  }

  Future reset() async {
    return await storage.delete(key: storageKey);
  }

  Future setQuestions(List<Question> questions, {bool force = false}) async {
    var currentQuestions = await loadQuestions();
    if (currentQuestions.isNotEmpty && force == false) return;
    var json = jsonEncode(questions);
    if (json == null) return;

    await storage.write(key: storageKey, value: json);
  }

  Future<List<Question>> loadQuestions() async {
    List<Question> questionsList = new List<Question>();
    var questionsJson = await storage.read(key: storageKey);
    if (questionsJson == null) return questionsList;

    Iterable json = jsonDecode(questionsJson);
    questionsList = json.map((q) => Question.fromJson(q)).toList();
    questions = questionsList;
    return questionsList;
  }

  Future<Question> nextQuestion(Question currentQuestion) async {
    var currentIndex = questions.indexWhere((x) => x.id == currentQuestion.id);
    questions[currentIndex].answerValue = currentQuestion.answerValue;
    await setQuestions(questions, force: true);
    if (currentIndex == questions.length - 1) return null;
    return questions.elementAt(currentIndex + 1);
  }

  Future<Question> previousQuestion(Question currentQuestion) async {
    var currentIndex = questions.indexWhere((x) => x.id == currentQuestion.id);
    questions[currentIndex].answerValue = currentQuestion.answerValue;
    await setQuestions(questions, force: true);
    if (currentIndex == 0) return null;
    return questions.elementAt(currentIndex - 1);
  }
}
