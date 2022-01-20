import 'package:quiz_defis/view/Quiz1/question.dart';

class QuizBrain {
  List<Question> _questions = [
    Question('question8', true),
    Question('question9', false),
    Question('question10', true),
    Question('question11', false)
  ];

  int _questionNumber = 0;

  String getQuestion() {
    return _questions[_questionNumber].question;
  }

  bool getAnswer() {
    return _questions[_questionNumber].reponse;
  }

  int getQuestionLength() {
    return _questions.length;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  int reset() {
    return _questionNumber = 0;
  }
}
