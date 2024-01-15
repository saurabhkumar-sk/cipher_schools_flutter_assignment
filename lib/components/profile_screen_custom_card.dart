import 'package:flutter/material.dart';

class ProfileScreeCard extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final VoidCallback? ontap;
  const ProfileScreeCard({
    super.key,
    required this.image,
    required this.title,
    required this.color,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 11,
        right: 28,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 89,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: color),
                  height: 60,
                  width: 60,
                  child: Image.asset(
                    image.toString(),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 90),
            ],
          ),
        ),
      ),
    );
  }
}
