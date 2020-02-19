import 'package:json_annotation/json_annotation.dart';
part 'question.g.dart';

@JsonSerializable(nullable: false)
class Question {
  String id;
  String text;
  int answerValue = 3;
  int position;
  Question(this.id, this.text, this.answerValue, this.position);

  String valueName() { 
    var title = 'Neutral';
    switch (answerValue) {
      case 2:
        title = "Slightly\ndisagree";
        break;
      case 3:
        title = "Neutral";
        break;
      case 4:
        title = "Slightly\nagree";
        break;
      case 5:
        title = "Agree";
        break;
      default:
        title = "Disagree";
        break;
    }
    return title;
  }

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}