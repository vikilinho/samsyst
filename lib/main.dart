import 'package:flutter/material.dart';
import 'package:samsys/views/employee_details_screen.dart';
import 'package:samsys/views/employee_list_screen.dart';
import 'package:samsys/views/employee_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        EmployeeProfile.emplID: (context) => EmployeeProfile(),
        EmployeeList.empListID: (context) => EmployeeList(),
      },
      home: EmployeeList(),
    );
  }
}
