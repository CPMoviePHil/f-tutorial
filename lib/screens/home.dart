import 'package:flutter/material.dart';
import 'package:blue_project/screens/for_column_test.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage> {
  TextEditingController _textFieldController1 = new TextEditingController();
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30),
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
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                          '請隨便輸入',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 80,
                      width: 120,
                      child: TextField(
                        autofocus: true,
                        controller: _textFieldController1,
                          style: TextStyle(
                              fontSize: 20.0,
                              height: 2.0,
                              color: Colors.black
                          ),
                      ),
                    ),
                  ],
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
                  onPressed: () {
                    Navigator.of(context).pushNamed('/test',
                        arguments: {'name': _textFieldController1.text}).then((value) {
                      // 新增第二個變數argument
                      showDialog(
                        // 新增一個對話框，用來顯示回傳的值
                          context: context,
                          child: AlertDialog(
                            content: Text(value),
                          ));
                    });
                  },
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
                        'Go To',
                        style: TextStyle(fontSize: 20)
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForColumnTestPage()));
                  },
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
                        'Go To Test Column',
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
