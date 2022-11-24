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
  // const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {

    void generateRandom(){
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    }

    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        generateRandom();
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                )
            ),
            Expanded(
              flex: 1 ,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      generateRandom();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ]
      ),
    );
  }
}


// class DicePage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     int leftDiceNumber = 1;
//     int rightDiceNumber = 2;
//
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: TextButton(
//                   onPressed: (){
//                     Random random = new Random();
//                     leftDiceNumber = random.nextInt(6) + 1;
//                     print(leftDiceNumber);
//                     return leftDiceNumber;
//                   },
//                   child: Image.asset('images/dice$leftDiceNumber.png'),
//               ),
//             )
//           ),
//           Expanded(
//             flex: 1 ,
//             child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: TextButton(
//                   child: Image.asset('images/dice2.png'),
//                   onPressed: (){
//                     print('Right Button');
//                   },
//                 ),
//             ),
//           ),
//         ]
//       ),
//     );
//   }
// }
