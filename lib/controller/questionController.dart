import 'package:get/get.dart';
import '../model/questionModel.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class quizController extends GetxController{
  String userName = "";
  int count = 60;
  CountDownController c = CountDownController();
  List<questionModel> questions = [
    questionModel(1, "The biggest Club in Egypt", ["Elesmaily", "Pyramids", "Alahly", "Elzamalik"], 2),
    questionModel(2, "The biggest Club in Europe", ["Real madrid", "Arsenal", "City", "Paris"], 0),
    questionModel(3, "The biggest Club in Egypt", ["Elesmaily", "Pyramids", "Alahly", "Elzamalik"], 2),
    questionModel(4, "The biggest Club in Europe", ["Real madrid", "Arsenal", "City", "Paris"], 0),
    questionModel(5, "The biggest Club in Egypt", ["Elesmaily", "Pyramids", "Alahly", "Elzamalik"], 2),
    questionModel(6, "The biggest Club in Europe", ["Real madrid", "Arsenal", "City", "Paris"], 0),
    questionModel(7, "The biggest Club in Egypt", ["Elesmaily", "Pyramids", "Alahly", "Elzamalik"], 2),
    questionModel(8, "The biggest Club in Europe", ["Real madrid", "Arsenal", "City", "Paris"], 0),
    questionModel(9, "The biggest Club in Egypt", ["Elesmaily", "Pyramids", "Alahly", "Elzamalik"], 2),
    questionModel(10, "The biggest Club in Europe", ["Real madrid", "Arsenal", "City", "Paris"], 0)
  ];
  int numberOfCurrentQuestion = 0;
  int selectedAnswer = -1;
  Map<int, int> answersList = {};

  void increment() {
    if(numberOfCurrentQuestion < questions.length-1){
      answersList[numberOfCurrentQuestion] = selectedAnswer;
      numberOfCurrentQuestion++;
      selectedAnswer=-1;
      c.start();
      update();
    }
    else{
      print(answersList);
      Get.toNamed("/result");
    }
  }
}