import 'package:design_assignment/Theme/all_styles.dart';
import 'package:flutter/material.dart';

class PaymentcontainerBox extends StatelessWidget {
  const PaymentcontainerBox(
      {required this.payment_text, required this.payment_type});
  final String payment_text;
  final String payment_type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            payment_text,
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
              payment_type,
              style: AllStyle.card_text,
            ),
          ),
        ],
      ),
    );
  }
}
