import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/signup.png"),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: size.width * 0.5 - 50,
                child: Container(
                  padding: const EdgeInsets.all(50),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile1.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(80),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                Text('a@a.com',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade500))
              ],
            ),
          ),
          const Gap(100),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/loginbtn.png"),
                ),
              ),
              child: const Text(
                "Sign out",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
