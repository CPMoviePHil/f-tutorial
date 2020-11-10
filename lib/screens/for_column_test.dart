import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ForColumnTestPage extends StatelessWidget{
  final DateTime dt = new DateTime.now();
  final DateFormat _dateFormat = new DateFormat('yyyy-MM-dd');
  final TextEditingController _textEditingController = new TextEditingController(text: 'Put Something in');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Page')),
      body: Center(
        child: mainLayout(context),
      ),
    );
  }
  Widget mainLayout(context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //forRatingStars(context),
        //forColumnTest(context),
        forCenterTest(context),
        //forImages(context),
      ],
    );
  }
  Widget forRatingStars(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
            Icons.star, color: Colors.yellow[900]
        ),
        Icon(
            Icons.star, color: Colors.yellow[900]
        ),
        Icon(
            Icons.star, color: Colors.yellow[900]
        ),
        Icon(
            Icons.star, color: Colors.grey[400]
        ),
        Icon(
            Icons.star, color: Colors.grey[400]
        ),
      ],
    );
  }
  Widget forImages(context){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Image.asset('assets/images/image_1.jpg'),
          ),
          Expanded(
              flex: 2,
              child: Image.asset('assets/images/image_2.jpg'),
          ),
        ],
      ),
    );
  }
  Widget forCenterTest(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new CircularPercentIndicator(
          radius: 100.0,
          lineWidth: 10.0,
          percent: 0.8,
          center: new Icon(
            Icons.person_pin,
            size: 50.0,
            color: Colors.blue,
          ),
          backgroundColor: Colors.grey,
          progressColor: Colors.blue,
        ),
        Container(
          height: 100,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: VerticalDivider(
            thickness: 2,
            width: 20,
            color: Colors.black,
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text('Hello World'),
              ),
              Icon(
                Icons.timer,
                color: Colors.red[500],
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  _dateFormat.format(dt),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget forColumnTest(context){
    return Column(
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
            child: Text('Go Back'),
          ),
        ),
      ],
    );
  }
}