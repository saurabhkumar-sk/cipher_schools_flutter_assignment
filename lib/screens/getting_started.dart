import 'package:cipher_schools_flutter_assignment/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Getting Started (1).png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 125,
            // right: 32,
            left: 260,
            child: ClipOval(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 90,
                  width: 90,
                  color: const Color.fromRGBO(237, 225, 225, 0.75),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 65,
                    weight: 50,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
