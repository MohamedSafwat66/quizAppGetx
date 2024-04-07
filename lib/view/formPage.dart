import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappgetx/controller/questionController.dart';

class formScreen extends StatelessWidget {
  TextEditingController c = TextEditingController();
  quizController quiz = quizController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF004643),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(right: 45),
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(85),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "QUIZ",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFF004643),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Hhelo",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFF8C660),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              controller: c,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Enter Your Name Please",
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () {
                quiz.userName = c.text;
                Get.toNamed('/quiz');
                // Get.back();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFFF8C660))),
              child: Text(
                "Start",
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