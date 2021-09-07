import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samsys/components/listCard.dart';
import 'package:samsys/model/employee.dart';

class EmployeeDetail extends StatelessWidget {
  final Employee employee;

  const EmployeeDetail({required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          children: [
            Text('SAMASYS',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Combact salary fraud',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ListCard(employee: employee, press: () {}),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 50,
                        color: Colors.grey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                height: 10,
                              ),
                              Text('FEB', style: TextStyle(fontSize: 20)),
                            ]),
                      ),
                      Row(
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    child: Row(children: [
                                      Text(
                                        "BORROWED:",
                                        style: GoogleFonts.mulish(
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦50000",
                                        style: GoogleFonts.mulish(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Container(
                                          height: 0.5,
                                          width: 300,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    child: Row(children: [
                                      Text(
                                        "RECEIVABLE:",
                                        style: GoogleFonts.mulish(
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦100000",
                                        style: GoogleFonts.mulish(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ])
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 50,
                        color: Colors.grey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                height: 10,
                              ),
                              Text('FEB', style: TextStyle(fontSize: 20)),
                            ]),
                      ),
                      Row(
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    child: Row(children: [
                                      Text(
                                        "BORROWED:",
                                        style: GoogleFonts.mulish(
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦50000",
                                        style: GoogleFonts.mulish(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Container(
                                          height: 0.5,
                                          width: 300,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    child: Row(children: [
                                      Text(
                                        "RECEIVABLE:",
                                        style: GoogleFonts.mulish(
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦100000",
                                        style: GoogleFonts.mulish(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ])
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
