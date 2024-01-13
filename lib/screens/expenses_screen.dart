import 'package:cipher_schools_flutter_assignment/components/textfield.dart';
import 'package:flutter/material.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0077FF),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: const Text(
          "Expense",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFFFCFCFC),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0077FF),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 184),
            const Padding(
              padding: EdgeInsets.only(left: 23.0),
              child: Text(
                "How much?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(252, 252, 252, 0.701),
                ),
              ),
            ),
            const SizedBox(height: 13),
            const Padding(
              padding: EdgeInsets.only(left: 23.0),
              child: Text(
                "₹ 0",
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 29),
            Container(
              height: MediaQuery.of(context).size.height * 0.568,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    const TextFieldCustom(
                      text: "Category",
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFF91919F),
                        size: 35,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const TextFieldCustom(
                      text: "Description",
                    ),
                    const SizedBox(height: 16),
                    const TextFieldCustom(
                      text: "Wallet",
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFF91919F),
                        size: 35,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const TextFieldCustom(
                      text: "",
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                          Size(double.infinity, 55),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFF7F3DFF),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFCFCFC),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
