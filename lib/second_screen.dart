import 'package:flutter/material.dart';

import 'first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final _enterNameTxtCnt = TextEditingController();
  final _enterMobileNumberTxtCnt = TextEditingController();

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return FirstScreen(
          Name: _enterNameTxtCnt.text,
          MobileNumber: _enterMobileNumberTxtCnt.text);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Screen',
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  controller: _enterNameTxtCnt,
                  decoration: InputDecoration(labelText: ' Enter Name'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  controller: _enterMobileNumberTxtCnt,
                  decoration:
                      InputDecoration(labelText: ' Enter Mobile Number'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
