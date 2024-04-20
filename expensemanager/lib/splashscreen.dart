import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:expensemanager/Registerscreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});
  @override
  State createState() => _splashscreenState();
}

class _splashscreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Spacer(),
            GestureDetector(
              child: Container(
                height: 144,
                width: 144,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(234, 238, 235, 1)),
                child: Center(
                  child: Image.asset('Assets/splash.png',
                      width: 69.76, height: 58.82),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Registerscreen(),
                    ));
              },
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text("Expense Manager",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16)))
          ]),
        ),
      ),
    );
  }
}
