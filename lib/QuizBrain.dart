import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  int qnum = 0;
  List<Question> questbanks = [
    Question(q: '¿Sebastian es malo con Melissa?', a: true),
    Question(q: '¿Sebastian le gusta ser alto?', a: false),
    Question(q: '¿Sebastian ayuda a Melissa?', a: true),
  ];
  String getQuestionText() {
    return questbanks[qnum].quesText;
  }

  bool getQuestionAns() {
    return questbanks[qnum].questans;
  }

  void questionnext() {
    if (qnum < questbanks.length) {
      qnum++;
    }
  }

  void si() {
    if (qnum >= 3) {
      qnum = 0;
    }
  }
}