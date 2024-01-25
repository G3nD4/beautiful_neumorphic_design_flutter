
import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:gradient_slider/gradient_slider.dart';

class GradientSliderWidget extends StatefulWidget {
  final double? value;
  const GradientSliderWidget({super.key, this.value});

  @override
  State<GradientSliderWidget> createState() => _GradientSliderWidgetState();
}

class _GradientSliderWidgetState extends State<GradientSliderWidget> {
  final textcontroller = TextEditingController();
  double sliderValue = 1;

  @override
  void initState() {
    sliderValue = widget.value ?? 1;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GradientSlider(
      trackBorderColor: Colors.grey.withOpacity(0.1),
      trackBorder: 10.0,
      
      thumbAsset: 'assets/1.png',
      thumbHeight: 55,
      thumbWidth: 55,
      trackHeight: 55,
      activeTrackGradient: const LinearGradient(colors: [
        Color(0xFFb6f0f2),
        Color(0xFF9ac3d9),
        Color.fromARGB(255, 63, 113, 139),
      ]),
      inactiveTrackGradient:  LinearGradient(
        colors: [
        Colors.grey.withOpacity(0.7),
        Colors.white.withOpacity(0.5),
        Colors.white
      ]),
      inactiveTrackColor: Colors.black,
      slider: Slider(
        value: sliderValue,
        min: 0,
        max: 10,
        onChanged: (val) {
          setState(
            () {
              sliderValue = val;
            },
          );
        },
      ),
    );
  }
}
