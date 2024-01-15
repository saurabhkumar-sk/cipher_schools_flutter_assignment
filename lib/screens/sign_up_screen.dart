import 'dart:developer';

import 'package:cipher_schools_flutter_assignment/firebase/firebase_api.dart';
import 'package:cipher_schools_flutter_assignment/screens/bottom_navigation_bar_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 56),
              TextFormField(
                validator: (value) {
                  if (value == null) {
                    return "Name is required";
                  } else {
                    return null;
                  }
                },
                controller: nameController,
                onChanged: (value) {
                  setState(() {});
                },
                cursorColor: Colors.grey,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 232, 231, 231)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: "Name",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                validator: (value) {
                  if (value == null) {
                    return "Email is required";
                  } else {
                    return null;
                  }
                },
                controller: emailController,
                onChanged: (value) {
                  setState(() {});
                },
                cursorColor: Colors.grey,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 232, 231, 231)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                validator: (value) {
                  if (value == null) {
                    return "Email is required";
                  } else {
                    return null;
                  }
                },
                controller: passwordController,
                onChanged: (value) {
                  setState(() {});
                },
                cursorColor: Colors.grey,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color(0xFF91919F),
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 232, 231, 231)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 17),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.check_box_outline_blank_rounded,
                      size: 32,
                      color: Color(0xFF7F3DFF),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "By signing up, you agree to the ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: "Terms of \nService and Privacy Policyf",
                          style: TextStyle(
                            color: Color(0xFF7F3DFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 27),
              ElevatedButton(
                onPressed: () {
                  log("message");
                  FireBAseApi.instance
                      .signUP(emailController.text, passwordController.text)
                      .then(
                    (value) {
                      if (value != null) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationBarScree(),
                            ),
                            (route) => false);
                      } else {
                        return null;
                      }
                    },
                  );
                  setState(() {});
                },
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(
                    Size(double.infinity, 56),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xFF7F3DFF),
                  ),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Or with",
                style: TextStyle(
                  color: Color(0xFF91919F),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  minimumSize: MaterialStatePropertyAll(
                    Size(double.infinity, 56),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 243, 243, 249),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/flat-color-icons_google.png"),
                    const SizedBox(width: 10),
                    const Text(
                      "Sign Up with Google",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      textBaseline: TextBaseline.alphabetic,
                      color: Color(0xFF91919F),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationBarScree(),
                          ));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        textBaseline: TextBaseline.alphabetic,
                        color: Color(0xFF7F3DFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
