import 'package:flutter/material.dart';
import 'package:quizs/repository/geografiya_repository.dart';

import '../model/test_model.dart';
import '../pages/quiz_page.dart';

class ItemCategoryQuiz extends StatelessWidget {
  String image;
  String name;
  VoidCallback onTap;

  ItemCategoryQuiz(
      {super.key,
      required this.image,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        padding: const EdgeInsets.all(12),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF2A3E3F), borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                  ],
                ),
              ],
            )),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0x5A7FA3FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Boshlash",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
