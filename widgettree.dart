// widgettree.dart
import 'package:flutter/material.dart';

class LevelOneWidget extends StatelessWidget {
  final String title;

  LevelOneWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0), // Add margin to LevelOneWidget
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.0),
          LevelTwoWidget(),
        ],
      ),
    );
  }
}

class LevelTwoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0), // Add margin to LevelTwoWidget
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dont forget to pray and say takbeer!',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.0),
          LevelThreeWidget(),
        ],
      ),
    );
  }
}

class LevelThreeWidget extends StatefulWidget {
  @override
  _LevelThreeWidgetState createState() => _LevelThreeWidgetState();
}

class _LevelThreeWidgetState extends State<LevelThreeWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0), // Add margin to LevelThreeWidget
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Use button to count your takbeers: $counter',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Takbeer++'),
          ),
        ],
      ),
    );
  }
}

class YourWidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LevelOneWidget('Takbeer Counter');
  }
}
