import 'package:quizs/model/test_model.dart';

class GeografiyaRepository {
  static List<TestModel> setGeografiya() {
    List<TestModel> quizs = [];

    quizs.add(TestModel(
      quiz: "Yerning eng ichki qatlami qanday nomlanadi?",
      a: "Mantiyaning pastki qismi",
      b: "Litosfera ",
      c: "Yadro ",
      d: 'Qobiq',
      trueAnswer: 'C',
    ));
    quizs.add(TestModel(
      quiz: "Eng uzun daryo qaysi?",
      a: "Nil ",
      b: "Amazonka",
      c: "Missisipi",
      d: 'Yanszi',
      trueAnswer: 'A',
    ));
    quizs.add(TestModel(
      quiz: "Qaysi materik qora qit’a deb ataladi?",
      a: "Janubiy Amerika",
      b: "Afrika ",
      c: "Avstraliya",
      d: 'Antarktida',
      trueAnswer: 'B',
    ));
    quizs.add(TestModel(
      quiz: "Qaysi okean eng katta maydonga ega?",
      a: "Atlantika okeani",
      b: "Hind okeani",
      c: "Tinch okeani",
      d: 'Shimoliy Muz okeani',
      trueAnswer: 'C',
    ));
    quizs.add(TestModel(
      quiz: "Yer sharining 70% qismini nima tashkil qiladi?",
      a: "Quruqlik",
      b: "Suv ",
      c: "Muzliklar",
      d: 'Tog‘lar',
      trueAnswer: 'B',
    ));
    quizs.add(TestModel(
      quiz: "Eng baland cho‘qqi qaysi?",
      a: "Makalu",
      b: "Everest ",
      c: "K2",
      d: 'Kilimanjaro',
      trueAnswer: 'B',
    ));
    quizs.add(TestModel(
      quiz: "Qaysi davlat 11 ta vaqt mintaqasiga ega?",
      a: "AQSh",
      b: "Rossiya",
      c: "Kanada",
      d: 'Xitoy',
      trueAnswer: 'B',
    ));
    quizs.add(TestModel(
      quiz: "O‘zbekiston qaysi qit’ada joylashgan?",
      a: "Osiyo ",
      b: "Yevropa",
      c: "Afrika",
      d: 'Janubiy Amerika',
      trueAnswer: 'A',
    ));
    quizs.add(TestModel(
      quiz: "Eng katta sahro qaysi?",
      a: "Kalahari",
      b: "Sahara",
      c: "Gobi",
      d: 'Arabiston',
      trueAnswer: 'B',
    ));
    quizs.add(TestModel(
      quiz: "Dunyoning eng uzun tog‘ tizmasi qaysi?",
      a: "Himolay",
      b: "And tog‘lari",
      c: "Alp tog‘lari",
      d: 'Kordilyera',
      trueAnswer: 'A',
    ));
    return quizs;
  }
}
