// ignore_for_file: prefer_const_constructors

import 'package:design_assignment/Theme/all_icons.dart';
import 'package:design_assignment/Theme/all_styles.dart';
import 'package:design_assignment/Theme/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../Widget/address_card.dart';
import '../Widget/payment_card.dart';
import '../Widget/row_item.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<Widget> iconList = [
    AllIcons.home,
    AllIcons.love,
    AllIcons.shoping_bag,
    AllIcons.notifications,
    AllIcons.person
  ];

  var _bottomNavIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Body color
      backgroundColor: Color(0xFFF5F5F7),
      //App Bar Section
      appBar: AppBar(
        leading: AllIcons.back_arrow,
        elevation: 0.00,
        backgroundColor: Color(0xFFF5F5F7),
      ),
      //Body section
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order#1234",
              style: AllStyle.mediam_text,
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 164, 148, 255)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "21 march, 2021",
                            style: AllStyle.card_text,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "order details:",
                            style: AllStyle.card_text,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    BillWidget(
                      text: "Chicken burger",
                      price: "\$250.0",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    BillWidget(
                      text: "Extra sauce",
                      price: "\$40.0",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    BillWidget(
                      text: "VAT",
                      price: "\$60.50",
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color.fromARGB(255, 164, 148, 255),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    BillWidget(
                      text: "Total",
                      price: "\$350.50",
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
            containerBox(
              delivery_text: ALLTexts.delivery,
              delivery_address: ALLTexts.delivery_address,
            ),
            SizedBox(height: 20.0),
            PaymentcontainerBox(
              payment_text: ALLTexts.paymentText,
              payment_type: ALLTexts.paymentType,
            ),
          ],
        ),
      ),
      //Bottom Navbar Acitivity
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Color.fromARGB(255, 248, 98, 53),
        height: 75.0,
        animationCurve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 400),
        items: iconList,
        index: _bottomNavIndex,
        backgroundColor: Color(0xFFF5F5F7),
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
      //other params
    );
  }
}
