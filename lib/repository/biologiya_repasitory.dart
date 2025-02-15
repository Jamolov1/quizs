import 'package:quizs/model/test_model.dart';

class BiologiyaRepasitory {
  static List<TestModel> setBiologiya() {
    List<TestModel> quizs = [];

    quizs.add(TestModel(
      quiz: "Yer yuzidagi barcha tirik organizmlar nimadan iborat?",
      a: "Suvdan",
      b: "Hujayradan ",
      c: "Havodan",
      d: "Qonidan",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "Odamda nechta yurak bo‘limi bor?",
      a: "2",
      b: "3",
      c: "4 ",
      d: "5",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "O‘simliklar kislorodni qaysi jarayonda chiqaradi?",
      a: "Fotosintez ",
      b: "Nafas olish",
      c: "Hazm qilish",
      d: "Transpiratsiya",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "Qaysi qon guruhi universal donor hisoblanadi?",
      a: "I (O) ",
      b: "II (A)",
      c: "III (B)",
      d: "IV (AB)",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "Baliqlar qanday nafas oladi?",
      a: "O‘pka bilan",
      b: "Jabralar bilan ",
      c: "Terisi orqali",
      d: "Burun orqali",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "Odam organizmida eng katta ichak qaysi?",
      a: "Ingichka ichak",
      b: "Yo‘g‘on ichak",
      c: "To‘g‘ri ichak",
      d: "O‘n ikki barmoqli ichak",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "Qaysi hayvon tuxum qo‘yadi?",
      a: "Sher",
      b: "It",
      c: "To‘tiqush ",
      d: "Maymun",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Qaysi organizm suvda yashaydi?",
      a: "Ilon",
      b: "Baliq ",
      c: "Chumoli",
      d: "Mushuk",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "Yurak qaysi organlar tizimiga tegishli?",
      a: "Hazm qilish",
      b: "Nafas olish",
      c: "Qon aylanish",
      d: "Nerv",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Eng katta sutemizuvchi hayvon qaysi?",
      a: "Fil",
      b: "Sher",
      c: "Ko‘k kit",
      d: "Tulki",
      trueAnswer: "C",
    ));

    return quizs;
  }
}
