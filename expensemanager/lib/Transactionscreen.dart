// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'dart:ui';
import 'Menudraweer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class Transactionscreen extends StatefulWidget {
  const Transactionscreen({super.key});
  @override
  State createState() => _TransactionscreeenState();
}

class _TransactionscreeenState extends State {
  TextEditingController dateController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();

  void Bottomsheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Create Transaction",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: const Color.fromRGBO(0, 0, 0, 1))),
                    const SizedBox(height: 15),
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Date",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color:
                                          const Color.fromRGBO(33, 33, 33, 1))),
                              const SizedBox(height: 5),
                              TextField(
                                  controller: dateController,
                                  decoration: const InputDecoration(
                                    hintText: "Pick Date of Transaction",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    suffixIcon:
                                        Icon(Icons.calendar_month_outlined),
                                  ),
                                  readOnly: true,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2024),
                                      lastDate: DateTime(2025),
                                    );
                                    String formatDate =
                                        DateFormat.yMMMd().format(pickedDate!);
                                    setState(() {
                                      dateController.text = formatDate;
                                    });
                                  }),
                              const SizedBox(height: 5),
                              Text(
                                "Ammount",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                              TextField(
                                  controller: amountController,
                                  decoration: const InputDecoration(
                                      hintText: "Enter Amount",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))))),
                              const SizedBox(height: 5),
                              //---------->
                              const SizedBox(height: 5),
                              Text(
                                "Category",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                              TextField(
                                controller: categoryController,
                                decoration: const InputDecoration(
                                    hintText: "Decide the Category",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    suffixIcon: Icon(Icons.arrow_drop_down)),
                              ),
                              const SizedBox(height: 5),
                              const SizedBox(height: 5),
                              Text(
                                "Description",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                              TextField(
                                  controller: discriptionController,
                                  decoration: const InputDecoration(
                                      hintText:
                                          "Wirte the Description of Transaction",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))))),
                              const SizedBox(height: 5),
                            ])),
                    ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(14, 161, 125, 1)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Add",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        )),
                  ]));
        });
  }

  String todayDate = DateFormat('MMMM yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Menudraweer(),
        appBar: AppBar(
            title: Text(todayDate,
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
              onPressed: () {
                Bottomsheet();
              },
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
                    Text("Add Transaction",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color.fromRGBO(33, 33, 33, 1)))
                  ])),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.white,
                  height: 58,
                  width: 361.5,
                  child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 41,
                              width: 41,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 174, 91, 0.7),
                              ),
                              child: Image.asset('Assets/medicine.png'),
                            ),
                            const SizedBox(width: 15),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Medicine",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                  Text(
                                      "Lorem Ipsum is simply dummy text of the ",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8)))
                                ]),
                            Column(children: [
                              Row(
                                children: [
                                  const Icon(Icons.remove_circle_rounded,
                                      color: Colors.red, size: 15),
                                  Text(
                                    "500",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 9),
                              Text("3 June | 11:50 AM",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: const Color.fromRGBO(0, 0, 0, 1)))
                            ]),
                            const Divider(
                              thickness: 1,
                              color: Colors.red,
                            ),
                          ])),
                ),
              );
            }));
  }
}
