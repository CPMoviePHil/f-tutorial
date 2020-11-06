import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage> {
  int _counter = 0;
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
            child: Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size: 40,
              ),
            ),
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            width: 160.0,
            height: 70.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const RaisedButton(
                  onPressed: null,
                  child: Text(
                      'Disabled Button',
                      style: TextStyle(fontSize: 20)
                  ),
                ),
                const SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {},
                  child: const Text(
                      'Enabled Button',
                      style: TextStyle(fontSize: 20)
                  ),
                ),
                const SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                        'Gradient Button',
                        style: TextStyle(fontSize: 20)
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
