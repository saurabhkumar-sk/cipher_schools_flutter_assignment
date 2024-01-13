import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String price;
  final DateTime dateTime;
  const TransactionHistory({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89,
      width: 336,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Image.asset(
            image.toString(),
          ),
          Column(
            children: [
              Text(title),
              Text(subTitle),
            ],
          ),
          Column(
            children: [
              Text(price),
              Text(
                dateTime.toString(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
