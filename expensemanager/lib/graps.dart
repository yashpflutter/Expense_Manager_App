import 'package:expensemanager/Menudraweer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const GraphScreen());
}

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  Map<String, double> data = {
    "food": 20,
    "Fuel": 34,
    "movies": 30,
    "Entertainment": 34,
    "Shopping": 10
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graph",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),
      ),
      drawer: const Menudraweer(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 177.02,
                  width: 314,
                  child: PieChart(
                      dataMap: data,
                      chartType: ChartType.ring,
                      animationDuration: const Duration(milliseconds: 2000),
                      chartRadius: 200,
                      ringStrokeWidth: 30,
                      centerText: "Total",
                      centerTextStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black),
                      chartValuesOptions:
                          const ChartValuesOptions(showChartValues: false)))
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 320,
              width: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclip.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclip.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclip.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclip.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Assets/eclip.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "₹ 640.00",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                ],
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 24,
            width: 230,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Text(
                  "₹ 23432",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
