import 'package:flutter/material.dart';
import 'package:quizs/pages/quiz_page.dart';
import 'package:quizs/repository/biologiya_repasitory.dart';
import 'package:quizs/widgets/item_category_quiz.dart';

import '../model/test_model.dart';
import '../repository/geografiya_repository.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TestModel> tests = GeografiyaRepository.setGeografiya();
  List<TestModel> tests2 = BiologiyaRepasitory.setBiologiya();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161F1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF161F1E),
        leading: Icon(Icons.stars_outlined, color: Colors.amber, size: 36,),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Text("kontakt",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
            ),
          )
        ],
      ),
      body: ListView(children: [
        ItemCategoryQuiz(
            image: "assets/globus.png", name: "Geografiya", onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            tests.shuffle();
            return QuizPage(
              name: "Geografiya",
              quizs: tests,
            );
          }));
        }),
        ItemCategoryQuiz(
            image: "assets/apple.png", name: "Biologiya", onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            tests2.shuffle();
            return QuizPage(
              name: "Biologiya",
              quizs: tests2,
            );
          }));
        }),
      ],),
    );
  }
}