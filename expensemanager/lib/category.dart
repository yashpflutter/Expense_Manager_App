import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Menudraweer.dart';

void main() {
  runApp(const Category());
}

class Category extends StatefulWidget {
  const Category({super.key});
  @override
  State createState() => _CategoryState();
}

class _CategoryState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Menudraweer(),
        appBar: AppBar(
            title: Text("Categories",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color.fromRGBO(0, 0, 0, 1))),
            actions: [
              GestureDetector(
                  child: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                  onTap: () {}),

              ///Search bar onTap function
              const SizedBox(width: 20),
            ]),
        body: GridView.builder(
          itemBuilder: (context, index) => Menudraweer(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        ));
  }
}
