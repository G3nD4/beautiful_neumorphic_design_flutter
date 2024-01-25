import 'package:flutter/material.dart';
import 'package:new_design_test/widgets.dart';

class TextRow extends StatelessWidget {
  const TextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Align(
          alignment: Alignment.bottomCenter,
          child: Text('MUSIC PLAYER',style: TextStyle(color: Colors.grey),)),
        const Align(
          alignment: Alignment.topCenter,
          child: Text('Say Okay Google',style: TextStyle(color: Colors.grey),)),
        NeumorphicWidgetsBuilder.buildCircleBeautyContainer(
          width: 50,
          height: 50,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 220, 223, 227),
                  spreadRadius: 0.0,
                )
              ],
            ),
            child:  const Center(
              child: Stack(
                children: [Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.circle_sharp,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
               ]
              ),
            ),
          ),
        ),
      
      ],
    );
  }
}
