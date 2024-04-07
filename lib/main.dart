import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappgetx/controller/questionController.dart';
import 'package:quizappgetx/view/quiz.dart';
import 'package:quizappgetx/view/resultScreen.dart';
import "view/formPage.dart";

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: [
        GetPage(
            name: '/home',
            page: () {
              return formScreen();
            },
            binding: quizBinding()
        ),
        GetPage(
            name: '/quiz',
            page: () {
              return quizScreen();
            },
            binding: quizBinding()),
        GetPage(
          name: '/result',
          page: () {
            return resultScreen();
          },
            binding: quizBinding()
        ),
      ],
    );
  }
}

class quizBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => quizController());
  }
}
