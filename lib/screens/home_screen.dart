import 'package:cipher_schools_flutter_assignment/components/custombutton.dart';
import 'package:cipher_schools_flutter_assignment/components/transaction_history_cus.dart';
import 'package:cipher_schools_flutter_assignment/screens/expenses_screen.dart';
import 'package:cipher_schools_flutter_assignment/screens/income_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 312,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  transform: GradientRotation(7),
                  colors: [
                    Color.fromRGBO(249, 238, 218, 1),
                    Color.fromRGBO(248, 237, 216, 0),
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatar.png"),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                          ),
                          label: const Text(
                            "October",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.notifications,
                          size: 32,
                          color: Color(0xFF7F3DFF),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    "Account Balance",
                    style: TextStyle(
                      color: Color.fromARGB(145, 119, 121, 89),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "₹38000",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 27),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const IncomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(0, 168, 107, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Image.asset("assets/images/income.png"),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Income",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "₹50000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ExpensesScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(253, 60, 74, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Image.asset("assets/images/expense.png"),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Expenses",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "₹12000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 9,
                left: 8,
                right: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeScreenCustomButton(
                    text: "Today",
                    color: const Color.fromRGBO(252, 172, 18, 1),
                    backgroundColor: const Color.fromRGBO(252, 238, 212, 1),
                    ontap: () {},
                  ),
                  HomeScreenCustomButton(
                    text: "Week",
                    color: const Color.fromRGBO(145, 145, 159, 1),
                    ontap: () {},
                  ),
                  HomeScreenCustomButton(
                    text: "Month",
                    color: const Color.fromRGBO(145, 145, 159, 1),
                    ontap: () {},
                  ),
                  HomeScreenCustomButton(
                    text: "Year",
                    color: const Color.fromRGBO(145, 145, 159, 1),
                    ontap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Transaction",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  HomeScreenCustomButton(
                    text: "See All",
                    backgroundColor: const Color.fromRGBO(238, 229, 255, 1),
                    color: const Color.fromRGBO(127, 61, 255, 1),
                    ontap: () {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 9),
            const TransactionHistory(
              image: "assets/images/shopping bag.png",
              title: "Shopping",
              subTitle: "Buy some grocery",
              price: "- ₹120",
              dateTime: "10:00 AM",
              color: Color.fromRGBO(252, 238, 212, 1),
            ),
            const SizedBox(height: 21),
            const TransactionHistory(
              image: "assets/images/recurring bill.png",
              title: "Subscription",
              subTitle: "Disney + Annual..",
              price: "- ₹499",
              dateTime: "03:30 PM",
              color: Color.fromRGBO(228, 215, 255, 1),
            ),
            const SizedBox(height: 21),
            const TransactionHistory(
              image: "assets/images/car.png",
              title: "Travel",
              subTitle: "Chandigarh to De...",
              price: "- ₹1000",
              dateTime: "10:00 AM",
              color: Color.fromRGBO(220, 218, 218, 1),
            ),
            const SizedBox(height: 21),
            const TransactionHistory(
              image: "assets/images/restaurant.png",
              title: "Food",
              subTitle: "Buy a Raman",
              price: "- ₹32",
              dateTime: "07:30 PM",
              color: Color.fromRGBO(253, 213, 215, 1),
            ),
            const SizedBox(height: 21),
            const TransactionHistory(
              image: "assets/images/shopping bag.png",
              title: "Shopping",
              subTitle: "Buy some grocery",
              price: "- ₹120",
              dateTime: "10:00 AM",
              color: Color.fromRGBO(253, 213, 215, 1),
            ),
            const SizedBox(height: 21),
          ],
        ),
      ),
    );
  }
}
