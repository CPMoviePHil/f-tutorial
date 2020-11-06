import 'package:flutter/material.dart';

class MyRegisterPage extends StatelessWidget {
  final TextEditingController registerField = new TextEditingController();
  final String title = 'Register';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.all(0.0),
              width: 90.0,
              height: 70.0,
              color: Colors.black87,
              child: TextField(
                controller: registerField,
              )
          ),
          Container(
            child: RaisedButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: (){

              },
              child: Text(
                '登入',
                style: TextStyle(
                  fontSize: 20,

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
