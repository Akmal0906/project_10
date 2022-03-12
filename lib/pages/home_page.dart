import 'package:flutter/material.dart';
import 'package:project_10/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static final String id='home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text='OPEN THE DETAIL PAGE';
  Future  <void>_openDetails()async{
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage('Akmal',22),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      text= result;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            _openDetails();

          },

          child: Text(text),
        ),
      ),
    );
  }
}
