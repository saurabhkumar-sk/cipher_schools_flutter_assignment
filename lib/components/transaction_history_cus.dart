import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String price;
  final String dateTime;
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
    return Padding(
      padding: const EdgeInsets.only(
        left: 11,
        right: 28,
      ),
      child: Container(
        height: 89,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(252, 238, 212, 1),
                ),
                height: 60,
                width: 60,
                child: Image.asset(
                  image.toString(),
                ),
              ),
            ),
            const SizedBox(width: 9),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(145, 145, 159, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 61),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(253, 60, 74, 1),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  dateTime,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(145, 145, 159, 1),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
