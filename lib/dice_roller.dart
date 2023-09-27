import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget {
  @override

  const DiceRoller({super.key});//adding a constructor function
  @override
  State<DiceRoller> createState(){
    //we ahve to retrun teh value whcih will 
    //be done by creating one more class

    
    return _DiceRollerState();
    

  }
}
//underscore means this class will be private 
class _DiceRollerState extends State<DiceRoller>{

    var currentDiceRoll =2 ;
   var pictureChange = 'assets/images/dice-six-faces-two.png';

  void rollDice() {
    
    setState(() {
      currentDiceRoll = Random().nextInt(6)+1;
      
    });
    // to re exexute the buuld function
    
  }
  
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset( 'assets/images/dice-six-faces-$currentDiceRoll.png', width: 100),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}



// Before mc tarika 

// import 'package:flutter/material.dart';
// import 'dart:math';
// class DiceRoller extends StatefulWidget {
//   @override

//   const DiceRoller({super.key});//adding a constructor function
//   @override
//   State<DiceRoller> createState(){
//     //we ahve to retrun teh value whcih will 
//     //be done by creating one more class

    
//     return _DiceRollerState();
    

//   }
// }
// //underscore means this class will be private 
// class _DiceRollerState extends State<DiceRoller>{

  
//    var pictureChange = 'assets/images/dice-six-faces-two.png';

//   void rollDice() {
//     var rollingDice = Random().nextInt(6)+1;
//     setState(() {
//       pictureChange = 'assets/images/dice-six-faces-$rollingDice.png';
//     });
//     // to re exexute the buuld function
    
//   }
  
//   @override
//   Widget build(context){
//     return Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(pictureChange, width: 100),
//             TextButton(
//               onPressed: rollDice,
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 textStyle: const TextStyle(fontSize: 28),
//               ),
//               child: const Text('Roll Dice'),
//             )
//           ],
//         );
//   }
// }
