import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp()
  );
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                padding: EdgeInsets.all(20),
                color: Colors.red,
                child: Text("Hello"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Text("Container 2"),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Text("Container 3"),
                  ),
                ],
              ),
              Container(
                width: 100,
                color: Colors.blue,
                child: Text("Container 3"),
              )
            ],
          )
        ),
      ),
    );
  }
}
