import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  int randomDiceNumber() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //옵션 + 엔터로 센터 감싸기.
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              setState(() {
                leftDiceNumber = randomDiceNumber();
                rightDiceNumber = randomDiceNumber();
                print(leftDiceNumber);
              });
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  setState(() {
                    leftDiceNumber = randomDiceNumber();
                    rightDiceNumber = randomDiceNumber();
                    print(rightDiceNumber);
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   int leftDiceNumber = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     leftDiceNumber = 3;
//
//     return Center(
//       //옵션 + 엔터로 센터 감싸기.
//       child: Row(
//         children: [
//           Expanded(
//               child: TextButton(
//                 style: TextButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: () {},
//                 child: Image.asset('images/dice$leftDiceNumber.png'),
//               )),
//           Expanded(
//             child: TextButton(
//                 style: TextButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: () {},
//                 child: Image.asset('images/dice4.png')),
//           ),
//         ],
//       ),
//     );
//   }
// }
