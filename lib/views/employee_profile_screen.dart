import 'package:flutter/material.dart';

class EmployeeProfile extends StatefulWidget {
  const EmployeeProfile({Key? key}) : super(key: key);
  static const String emplID = 'PROFILE_SCREEN';

  @override
  _EmployeeProfileState createState() => _EmployeeProfileState();
}

class _EmployeeProfileState extends State<EmployeeProfile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _positionController = TextEditingController();
  TextEditingController _salaryController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
          child: SingleChildScrollView(
              child: Form(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 50.0,
              ),
              Text("Employee Profile", style: TextStyle(fontSize: 20)),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  validator: (String? name) => name!.length < 8 && name.isEmpty
                      ? 'Please input a valid name'
                      : null,
                  controller: _nameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    labelText: 'Full Name *',
                    labelStyle: TextStyle(fontSize: 16),
                    hintText: 'Enter Full Name',
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  validator: (String? number) =>
                      number!.length < 8 && number.isEmpty
                          ? 'Please input a valid number'
                          : null,
                  controller: _phoneController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    labelText: 'Phone Number *',
                    labelStyle: TextStyle(fontSize: 16),
                    hintText: 'Enter Phone Number',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  validator: (String? email) =>
                      email!.length < 8 && email.isEmpty
                          ? 'Please input a valid email'
                          : null,
                  controller: _emailController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    labelText: 'Email *',
                    labelStyle: TextStyle(fontSize: 16),
                    hintText: 'Enter Email Address',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  validator: (String? position) => position!.isEmpty
                      ? 'Please input a valid position'
                      : null,
                  controller: _positionController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    labelText: 'Position *',
                    labelStyle: TextStyle(fontSize: 16),
                    hintText: 'Enter Position',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  validator: (String? salary) =>
                      salary!.isEmpty ? 'Please input a valid salary' : null,
                  controller: _salaryController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    labelText: 'Salary *',
                    labelStyle: TextStyle(fontSize: 16),
                    hintText: 'Enter Salary',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child:
                          Text('SAVE', style: TextStyle(color: Colors.white))),
                ),
              )
            ]),
          )),
        ));
  }
}
