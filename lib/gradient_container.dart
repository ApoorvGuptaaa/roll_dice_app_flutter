//import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          //  [
          //   Color.fromARGB(255, 90, 39, 6),
          //   Color.fromARGB(255, 19, 2, 45)
          // ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:const  Center(
        child: DiceRoller()
      ),
    );
  }
}
// class GradientContainer extends StatelessWidget{
//    const GradientContainer(this.colors,{super.key});
    
//       final List<Color> colors;

//    @override
//    Widget build(context){
//     return  Container(
//           decoration:   BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               //  [
//               //   Color.fromARGB(255, 90, 39, 6),
//               //   Color.fromARGB(255, 19, 2, 45)
//               // ],
//               begin: startAlignment,
//               end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText("Heloo worldd"),
//           ),
//         );
//    }
// }



// SNAPSHOT BEFORE ADDING IMAGES


// const startAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;
// class GradientContainer extends StatelessWidget{
//    const GradientContainer(this.color1,this.color2,{super.key});
    
//       final Color color1;
//       final Color color2;

//    @override
//    Widget build(context){
//     return  Container(
//           decoration:   BoxDecoration(
//             gradient: LinearGradient(
//               colors: [color1,color2] ,
//               //  [
//               //   Color.fromARGB(255, 90, 39, 6),
//               //   Color.fromARGB(255, 19, 2, 45)
//               // ],
//               begin: startAlignment,
//               end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText("Heloo worldd"),
//           ),
//         );
//    }
// }
 

 //SNAPSHOT BEFOR PUTTING COLUMN FROM THIS TO STATEFUL


//  import 'package:flutter/material.dart';

// const startAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//    GradientContainer(this.color1, this.color2, {super.key});

//   final Color color1;
//   final Color color2;

//   var pictureChange = 'assets/images/dice-six-faces-two.png';

//   void rollDice() {
//     pictureChange = 'assets/images/dice-six-faces-four.png';
//   }

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [color1, color2],
//           //  [
//           //   Color.fromARGB(255, 90, 39, 6),
//           //   Color.fromARGB(255, 19, 2, 45)
//           // ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: Column(
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
//         ),
//       ),
//     );
//   }
// }


