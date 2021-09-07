import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:samsys/components/listCard.dart';
import 'package:samsys/model/employee_list.dart';
import 'package:samsys/views/employee_details_screen.dart';

class EmployeeList extends StatefulWidget {
  @override
  _EmployeeListState createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
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
      body: SafeArea(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
            child: ListView.builder(
              itemCount: staff.length,
              itemBuilder: (BuildContext context, int index) => ListCard(
                  employee: staff[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmployeeDetail(
                          employee: staff[index],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ])),
      ),
    );
  }
}
