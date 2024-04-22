// ignore_for_file: file_names

import 'package:expensemanager/Transactionscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Loginscreen.dart';

void main() => runApp(const Registerscreen());

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});
  @override
  State createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const SizedBox(height: 86),
          Image.asset('Assets/splash.png', height: 58.82, width: 69.76),
          const SizedBox(height: 25),
          Padding(
              padding: const EdgeInsets.all(40),
              // ignore: avoid_unnecessary_containers
              child: Container(
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 110),
                        child: Text("Create your Account",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black)),
                      ),
                      const SizedBox(height: 20),
                      Container(
                          width: 280,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  blurRadius: 10)
                            ],
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Name",
                                  labelStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                  contentPadding: const EdgeInsets.all(18)))),
                      const SizedBox(height: 20),
                      Container(
                          width: 280,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  blurRadius: 10)
                            ],
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Username",
                                  labelStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                  contentPadding: const EdgeInsets.all(18)))),
                      const SizedBox(height: 20),
                      Container(
                          width: 280,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  blurRadius: 10)
                            ],
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Password",
                                  labelStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                  contentPadding: const EdgeInsets.all(18)))),
                      const SizedBox(height: 20),
                      Container(
                          width: 280,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  blurRadius: 10)
                            ],
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Confirm Password",
                                  labelStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                  contentPadding: const EdgeInsets.all(18)))),
                      const SizedBox(height: 20),
                      GestureDetector(
                        child: Container(
                            width: 280,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(14, 161, 125, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    blurRadius: 10)
                              ],
                            ),
                            child: Center(
                                child: Text("Sign Up",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.white)))),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Transactionscreen()));
                        },
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 0.6)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Loginscreen()));
                            },
                            child: Text("Sign in",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(14, 161, 125, 1))),
                          )
                        ],
                      )
                    ],
                  )))
        ]));
  }
}
