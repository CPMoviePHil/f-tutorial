import 'package:flutter/material.dart';

class ForColumnTestPage extends StatelessWidget{
  final TextEditingController _textEditingController = new TextEditingController(text: 'Put Something in');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "hello",
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'World',
            style: TextStyle(
              fontSize: 30,
              color: Colors.green[200]
            ),
          ),
          TextField(
            enabled: false,
            controller: _textEditingController,
          ),
          RaisedButton(
            onPressed: (){
                Navigator.of(context).pop('Go Back To HomePage');
              },
            textColor: Colors.black87,
            child: Container(
              child: Text('Gooo Back'),
            ),
          ),
        ],
      ),
    );
  }
}