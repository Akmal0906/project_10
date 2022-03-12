import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
  static final String id='detail_page';
 final String input;
 final int age;
DetailPage(this.input,this.age);
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            _sendDataBack(context);
          },
          child: Text('ButtonBack'),
        ),
      ),
    );
  }
  void _sendDataBack(BuildContext context) {
    String textToSendBack = textFieldController.text;
    Navigator.pop(context, textToSendBack);
  }
}
