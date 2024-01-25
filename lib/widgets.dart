import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_design_test/text_styles.dart';

import 'colors.dart';

abstract class NeumorphicWidgetsBuilder {
  static Widget buildBeautyContainer({
    Widget? child,
    double width = 200,
    double height = 200,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: outerDarkShadowColor,
            offset: Offset.fromDirection(0.785398, 5),
            blurRadius: 8,
          ),
          const BoxShadow(color: mainColor),
          BoxShadow(
            color: outerLightShadowColor,
            offset: Offset.fromDirection(3.926990, 5),
            blurRadius: 8,
          ),
          BoxShadow(
            color: innerLightShadowColor,
            spreadRadius: 0.0,
            offset: Offset.fromDirection(0.785398, 0),
            blurRadius: 0.0,
          ),
          BoxShadow(
            color: innerDarkShadowColor,
            spreadRadius: -1.0,
            offset: Offset.fromDirection(3.926990, 0),
            blurRadius: 2.0,
          ),
        ],
      ),
      child: child,
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
            color: outerDarkShadowColor,
            offset: Offset.fromDirection(0.785398, 5),
            blurRadius: 8,
          ),
          BoxShadow(
            color: outerLightShadowColor,
            offset: Offset.fromDirection(3.926990, 5),
            blurRadius: 8,
          ),
          const BoxShadow(color: mainColor),
          BoxShadow(
            color: innerLightShadowColor,
            spreadRadius: -10.0,
            offset: Offset.fromDirection(0.785398, 16),
            blurRadius: 12.0,
          ),
          BoxShadow(
            color: innerDarkShadowColor,
            spreadRadius: -16.0,
            offset: Offset.fromDirection(3.926990, 16),
            blurRadius: 20.0,
          ),
        ],
      ),
      child: child,
    );
  }

  static Widget buildFunctionalBeautyContainer({
    required String text,
    required IconData iconData,
  }) {
    return buildBeautyContainer(
      width: 130,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
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
                buildBeautySwitch(false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildBeautySwitch(bool value) {
    return BeautySwitch(initValue: value);
  }
}

class BeautySwitch extends StatefulWidget {
  final bool initValue;

  const BeautySwitch({required this.initValue});

  @override
  State<BeautySwitch> createState() => _BeautySwitchState();
}

class _BeautySwitchState extends State<BeautySwitch> {
  late bool value;

  @override
  void initState() {
    value = widget.initValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CupertinoSwitch(
        value: value,
        onChanged: ((newValue) {
          value = newValue;
          setState(() {});
        }),
      ),
    );
  }
}
