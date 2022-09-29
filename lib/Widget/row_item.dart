// ignore_for_file: prefer_const_constructors

import 'package:design_assignment/Theme/all_styles.dart';
import 'package:design_assignment/Theme/all_texts.dart';
import 'package:flutter/material.dart';

class BillWidget extends StatelessWidget {
  const BillWidget({required this.text, required this.price});

  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AllStyle.card_text),
        Text(
          price,
          style: AllStyle.card_text,
        ),
      ],
    );
  }
}
