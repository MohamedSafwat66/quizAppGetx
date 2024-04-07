import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:quizappgetx/controller/questionController.dart';
import 'package:get/get.dart';

class quizScreen extends StatefulWidget {
  @override
  State<quizScreen> createState() => _quizScreenState();
}

class _quizScreenState extends State<quizScreen> {

  final _questionsController = Get.put(quizController());

  setSelectedRadio(int val) {
    setState(() {

    });
    _questionsController.selectedAnswer = val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  margin: EdgeInsets.all(35),
                  height: 150,
                  width: double.infinity,
                  child: Text(_questionsController.questions[_questionsController.numberOfCurrentQuestion].question!,style: TextStyle(fontSize: 18),),
                ),
              ),
              Center(
                child: CircularCountDownTimer(
                  duration: _questionsController.count,

                  initialDuration: 0,

                  isReverse: true,

                  isReverseAnimation: true,

                  controller: _questionsController.c,

                  width: MediaQuery.of(context).size.width/5,

                  height: MediaQuery.of(context).size.height / 10,

                  ringColor: Color(0xFFABD1C6),

                  fillColor: Color(0xFF004643),

                  backgroundColor: Colors.white,

                  strokeWidth: 8.0,

                  strokeCap: StrokeCap.round,

                  textStyle: const TextStyle(
                    fontSize: 33.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  onComplete: () {
                    _questionsController.increment();
                    Get.updateLocale(Locale.fromSubtags());
                  },
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 0.5
                  )
                ],
                color: (_questionsController.selectedAnswer==0)?Color(0xFFABD1C6):Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.all(20),
            child: RadioListTile<int>(
              fillColor: MaterialStatePropertyAll(Color(0xFF004643)),
              title: Text(
                  _questionsController.questions[_questionsController.numberOfCurrentQuestion].answers[0]
              ),

              value: 0,
              groupValue: _questionsController.selectedAnswer,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 0.5
                  )
                ],
                color: (_questionsController.selectedAnswer==1)?Color(0xFFABD1C6):Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.all(20),
            child: RadioListTile<int>(
              fillColor: MaterialStatePropertyAll(Color(0xFF004643)),
              title: Text(
                  _questionsController.questions[_questionsController.numberOfCurrentQuestion].answers[1]
              ),

              value: 1,
              groupValue: _questionsController.selectedAnswer,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 0.5
                )
              ],
                color: (_questionsController.selectedAnswer==2)?Color(0xFFABD1C6):Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.all(20),
            child: RadioListTile<int>(
              fillColor: MaterialStatePropertyAll(Color(0xFF004643)),
              title: Text(
                  _questionsController.questions[_questionsController.numberOfCurrentQuestion].answers[2]
              ),
              value: 2,
              groupValue: _questionsController.selectedAnswer,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 0.5
                  )
                ],
                color: (_questionsController.selectedAnswer==3)?Color(0xFFABD1C6):Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.all(20),
            child: RadioListTile<int>(
              fillColor: MaterialStatePropertyAll(Color(0xFF004643)),
              title: Text(
                  _questionsController.questions[_questionsController.numberOfCurrentQuestion].answers[3]
              ),

              value: 3,
              groupValue: _questionsController.selectedAnswer,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: (){
                _questionsController.increment();
                Get.updateLocale(Locale.fromSubtags());
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF004643))
              ),
              child: Text(
                "Next",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}