import 'package:flutter/material.dart';
import 'package:new_design_test/widgets.dart';

class RowIcon extends StatelessWidget {
  const RowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NeumorphicWidgetsBuilder.buildCircleBeautyContainer(
          width: 60,
          height: 60,
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
            child:  Icon(
              Icons.call,
              color: Colors.grey.withOpacity(0.6),
              size: 25,
            ),
          ),
        ),
        NeumorphicWidgetsBuilder.buildCircleBeautyContainer(
          width: 60,
          height: 60,
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
            child:  Icon(
              Icons.video_call,
              color: Colors.grey.withOpacity(0.6),
              size: 25,
            ),
          ),
        ),
        NeumorphicWidgetsBuilder.buildCircleBeautyContainer(
          width: 60,
          height: 60,
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
            child:  Icon(
              Icons.email,
             color: Colors.grey.withOpacity(0.6),
              size: 25,
            ),
          ),
        ),
        NeumorphicWidgetsBuilder.buildCircleBeautyContainer(
          width: 60,
          height: 60,
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
            child:  Icon(
              Icons.swipe,
              color: Colors.grey.withOpacity(0.6),
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}
