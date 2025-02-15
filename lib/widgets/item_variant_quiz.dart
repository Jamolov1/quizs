import 'package:flutter/material.dart';

class ItemVariantQuiz extends StatelessWidget {
  String testVariant;
  bool isSelected;
  VoidCallback ontTap;

  ItemVariantQuiz(
      {super.key,
      required this.testVariant,
      required this.isSelected,
      required this.ontTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontTap,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF2A3E3F),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2,color: isSelected ? Colors.green: Color(0xFF2A3E3F),)
          ),
          child: Center(
            child: Text(
              testVariant,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected ? Colors.green : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
