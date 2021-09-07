import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samsys/model/employee.dart';

class ListCard extends StatelessWidget {
  final Employee employee;
  final VoidCallback press;

  ListCard({required this.employee, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          color: Colors.white,
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 145,
                          width: 130,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(employee.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: Hero(
                          //   tag: "${employee.image}",
                          //   child: Image.asset(
                          //     employee.image,
                          //     fit: BoxFit.contain,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          employee.name,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.mulish(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          employee.position,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.mulish(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          employee.number,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.mulish(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          employee.email,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.mulish(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
