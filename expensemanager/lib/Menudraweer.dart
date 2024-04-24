// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category.dart';

void main() {
  runApp(const Menudraweer());
}

class Menudraweer extends StatefulWidget {
  const Menudraweer({super.key});
  @override
  State createState() => _MenudraweerState();
}

class _MenudraweerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.all(10), children: <Widget>[
      const SizedBox(height: 50),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Expense Manager",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(0, 0, 0, 1))),
              Text("Saves all your Transactions",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: const Color.fromRGBO(0, 0, 0, 0.5))),
              const SizedBox(height: 20),
              Container(
                height: 40,
                width: 184,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Color.fromRGBO(14, 161, 125, 0.15),
                ),
                child: Row(children: [
                  const SizedBox(width: 15),
                  Image.asset('Assets/subtract.png'),
                  const SizedBox(width: 5),
                  Text("Transaction",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color.fromRGBO(14, 161, 125, 1))),
                ]),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('Assets/groups.png', height: 17, width: 17),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Graphs",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color.fromRGBO(33, 33, 33, 1))),
                  ],
                ),
              ),
              //------->
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Category()));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('Assets/category.png', height: 17, width: 17),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Category ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color.fromRGBO(33, 33, 33, 1))),
                  ],
                ),
              ),
              //------------------>
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('Assets/trash.png', width: 17, height: 17),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Trash ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color.fromRGBO(33, 33, 33, 1))),
                  ],
                ),
              ),
              //-------------------------->
              const SizedBox(height: 25),
              GestureDetector(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset('Assets/aboutus.png', width: 17, height: 17),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("About Us",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color.fromRGBO(33, 33, 33, 1))),
                    ],
                  ))
            ],
          ),
        )
      ]),
    ]));
  }
}
