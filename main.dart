import 'package:flutter/material.dart';
import 'widgettree.dart';

void main() {
  runApp(MyApp2()); //also i have myapp class which has greetings below
}

class GreetingWidget extends StatelessWidget {
  final String greetingMessage;

  GreetingWidget(this.greetingMessage);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(greetingMessage,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          )),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter Value: $counter',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Widgets Practice'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GreetingWidget("Welcome to Widgets Practice"),
//             GreetingWidget("Hello, Flutter!"),
//             GreetingWidget("Greetings from Flutter"),
//             CounterWidget(), // Include the CounterWidget here
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Tree Example'),
        ),
        body: YourWidgetTree(), // Use the widget tree from the other file
      ),
    );
  }
}
