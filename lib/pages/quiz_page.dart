import 'package:flutter/material.dart';
import 'package:quizs/pages/home_page.dart';

import '../model/test_model.dart';
import '../widgets/item_variant_quiz.dart';

class QuizPage extends StatefulWidget {
  List<TestModel> quizs;
  String name;

  QuizPage({super.key, required this.name, required this.quizs});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionCount = 0;
  int expendedValue = 1;
  int trueQuestionCount = 0;
  String isSelected = "";
  List<String> choseAnswers = [];

  void submit() {
    showModalBottomSheet(
        isDismissible: false,
        context: context,
        builder: (ctx) {
          return Container(
            height: 350,
            decoration: BoxDecoration(
                color: Color(0xFF2A3E3F),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    color: isSelected ==
                            widget.quizs[currentQuestionCount].trueAnswer
                        ? Colors.green
                        : Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: Center(
                    child: isSelected ==
                            widget.quizs[currentQuestionCount].trueAnswer
                        ? Text(
                            "To'g'ri",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            "Xato",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF1F2D2E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Savol: ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  widget.quizs[currentQuestionCount].quiz,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade800,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "Tug'ri Javob: ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              widget.quizs[currentQuestionCount].trueAnswer,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (isSelected.isEmpty)
                        return;
                      bool isLastQuestion =
                          currentQuestionCount == widget.quizs.length - 1;

                      if (isSelected ==
                          widget.quizs[currentQuestionCount].trueAnswer) {
                        choseAnswers.add("Tug'ri");
                        trueQuestionCount++;
                      } else {
                        choseAnswers.add("Xato");
                      }

                      Navigator.of(context).pop();

                      if (isLastQuestion) {
                        Future.delayed(Duration(milliseconds: 300), () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                backgroundColor: Color(0xFF2A3E3F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 35),
                                        height: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20))),
                                        child: Center(
                                          child: Text(
                                            "Sizning Natijangiz",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 20),
                                        height: 350,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF223436),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Column(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              padding: EdgeInsets.only(top: 20),
                                              child: Image.asset(
                                                "assets/img.png",
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                            Container(
                                              margin: EdgeInsets.all(20),
                                              height: 60,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF2A3E3F),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              child: Center(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Natija ",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18),
                                                    ),
                                                    Text(
                                                      "$trueQuestionCount / ${widget.quizs.length}",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushReplacement(context,
                                                  MaterialPageRoute(
                                                      builder: (_) {
                                                return HomePage();
                                              }));
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              height: 60,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Yopish",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pushReplacement(
                                                    context, MaterialPageRoute(
                                                        builder: (_) {
                                                  return QuizPage(
                                                      name: widget.name,
                                                      quizs: widget.quizs);
                                                }));
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF2CAFFB),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Yangi  O'yin",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 19,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        });
                      } else {
                        expendedValue++;
                        currentQuestionCount++;
                        isSelected = "";
                      }
                    });
                  },
                  child: Container(
                    height: 60,
                    margin: EdgeInsets.only(
                        left: 12, right: 12, bottom: 20, top: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFF0069FD),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161F1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF161F1E),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.white,
            )),
        title: Text(
          widget.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF2A3E3F),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFF233333),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Savollar:  ",
                                  style: TextStyle(
                                    color: Color(0xFF5E6473),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${currentQuestionCount + 1}/${widget.quizs.length}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFF233333),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Ball:  ",
                                  style: TextStyle(
                                    color: Color(0xFF5E6473),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "${trueQuestionCount}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          widget.quizs[currentQuestionCount].quiz,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 250,
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: ItemVariantQuiz(
                            testVariant: widget.quizs[currentQuestionCount].a,
                            isSelected: isSelected == "A",
                            ontTap: () {
                              submit();
                              setState(() {
                                isSelected = "A";
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: ItemVariantQuiz(
                            testVariant: widget.quizs[currentQuestionCount].b,
                            isSelected: isSelected == "B",
                            ontTap: () {
                              submit();
                              setState(() {
                                isSelected = "B";
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 12,
                  ),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: ItemVariantQuiz(
                            testVariant: widget.quizs[currentQuestionCount].c,
                            isSelected: isSelected == "C",
                            ontTap: () {
                              submit();
                              setState(() {
                                isSelected = "C";
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: ItemVariantQuiz(
                            testVariant: widget.quizs[currentQuestionCount].d,
                            isSelected: isSelected == "D",
                            ontTap: () {
                              submit();
                              setState(() {
                                isSelected = "D";
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
