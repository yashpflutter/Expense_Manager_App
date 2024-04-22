// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'dart:ui';

import 'package:expensemanager/Loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Menudraweer.dart';

class Transactionscreen extends StatefulWidget {
  const Transactionscreen({super.key});
  @override
  State createState() => _TransactionscreeenState();
}

class _TransactionscreeenState extends State {
  String formatdate = DateFormat('MMM dd,yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer:const Menudraweer(),
        appBar: AppBar(
            //title: const Text("$todaydate")),
            // ignore: unnecessary_string_interpolations
            title: Text(formatdate,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: const Color.fromRGBO(33, 33, 33, 1))),
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
        floatingActionButton: Container(
          height: 46,
          width: 166,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(14, 161, 125, 1)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text("Add Transaction ")
                  ])),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      height: 63,
                      width: 361.5,
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(14, 161, 125, 1)),
                                    width: 43,
                                    height: 43,
                                    child: Image.asset('Assets/medicine.png',
                                        width: 5, height: 5)),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Medicine",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                33, 33, 33, 1))),
                                    const Text(
                                        "Lorem Ipsum is simply dummy text of the "),
                                  ],
                                ),
                                //SizedBox(width: 10),
                                const Icon(Icons.remove_circle_outline_rounded),
                                Text("500",
                                    style:
                                        GoogleFonts.poppins(color: Colors.red)),
                                Column(children: [
                                  const SizedBox(height: 23),
                                  const Text("3June|11:30"),
                                ])
                              ],
                            )
                          ]))));
            }));
  }
}
