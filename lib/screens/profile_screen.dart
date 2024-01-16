import 'package:cipher_schools_flutter_assignment/components/profile_screen_custom_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      "assets/images/Rectangle 9.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: const Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(145, 145, 159, 1),
                  ),
                ),
                subtitle: const Text(
                  "Khushi Sharma",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit_outlined,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 356,
                width: double.infinity,
                color: const Color.fromARGB(255, 250, 250, 250),
                child: Column(
                  children: [
                    const ProfileScreeCard(
                      image: "assets/images/wallet 3.png",
                      title: "Account",
                      color: Color.fromRGBO(238, 229, 255, 1),
                    ),
                    const ProfileScreeCard(
                      image: "assets/images/settings.png",
                      title: "Setting",
                      color: Color.fromRGBO(238, 229, 255, 1),
                    ),
                    const ProfileScreeCard(
                      image: "assets/images/upload.png",
                      title: "Export Data",
                      color: Color.fromRGBO(238, 229, 255, 1),
                    ),
                    ProfileScreeCard(
                      image: "assets/images/logout.png",
                      title: "Logout",
                      color: const Color.fromRGBO(255, 226, 228, 1),
                      ontap: () async {
                        await FirebaseAuth.instance.signOut();
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
