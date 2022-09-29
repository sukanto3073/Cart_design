import 'package:design_assignment/Theme/all_styles.dart';
import 'package:flutter/material.dart';

class containerBox extends StatelessWidget {
  const containerBox(
      {required this.delivery_address, required this.delivery_text});
  final String delivery_text;
  final String delivery_address;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            delivery_text,
            style: AllStyle.card_text,
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(top: 20.00, left: 10.00),
            width: MediaQuery.of(context).size.width,
            height: 60.00,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.00),
              color: Colors.white,
            ),
            child: Text(
              delivery_address,
              style: AllStyle.card_text,
            ),
          ),
        ],
      ),
    );
  }
}
