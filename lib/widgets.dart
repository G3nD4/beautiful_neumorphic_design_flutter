import 'package:flutter/material.dart';
import 'package:new_design_test/text_styles.dart';

abstract class NeumorphicWidgetsBuilder {
  static Widget buildFunctionalBeautyContainer({
    required String text,
    required IconData iconData,
  }) {
    return buildBeautyContainer(
      width: 150,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: largeMainTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'off',
                  style: boldSecondaryTextStyle,
                ),
                const SizedBox(width: 4.0),
                Icon(
                  iconData,
                  color: Colors.grey,
                  size: 14.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildCircleBeautyContainer({
    Widget? child,
    double width = 200,
    double height = 200,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset.fromDirection(0.785398, 5),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset.fromDirection(3.926990, 5),
            blurRadius: 8,
          ),
          const BoxShadow(color: Color.fromARGB(255, 220, 223, 227)),
          BoxShadow(
            color: Colors.white70,
            spreadRadius: -10.0,
            offset: Offset.fromDirection(0.785398, 16),
            blurRadius: 14.0,
          ),
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -16.0,
            offset: Offset.fromDirection(3.926990, 16),
            blurRadius: 20.0,
          ),
        ],
      ),
      child: child,
    );
  }

  static Widget buildBeautyContainer({
    Widget? child,
    double width = 200,
    double height = 200,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 220, 223, 227),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset.fromDirection(0.785398, 5),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset.fromDirection(3.926990, 5),
            blurRadius: 8,
          ),
        ],
      ),
      child: child,
    );
  }
}