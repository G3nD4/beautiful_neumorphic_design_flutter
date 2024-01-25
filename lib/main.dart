import 'package:flutter/material.dart';
import 'package:new_design_test/row_icon.dart';
import 'package:new_design_test/slider.dart';
import 'package:new_design_test/text_row.dart';
import 'package:new_design_test/text_styles.dart';
import 'package:new_design_test/widgets.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.white,
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Monday', style: largeSecondaryTextStyle),
              Text('MAY 25', style: largeMainTextStyle),
            ],
          ),
        ),
        leading: const Icon(
          Icons.density_medium,
          color: Colors.grey,
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.grey,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(boxShadow: [
                  const BoxShadow(
                      spreadRadius: -10, blurRadius: 10, color: mainColor),
                ]),
                width: 400,
                child: GradientSliderWidget()),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NeumorphicWidgetsBuilder.buildBeautyContainer(
                  width: 150,
                  height: 224,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NeumorphicWidgetsBuilder.buildCircleBeautyContainer(
                        width: 100,
                        height: 100,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 220, 223, 227),
                                spreadRadius: -10.0,
                              )
                            ],
                          ),
                          child: const Icon(
                            Icons.face_2_rounded,
                            color: Colors.black,
                            size: 48,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      const Text(
                        'Hi, Manav!',
                        style: mainTextStyle,
                      ),
                      const Text(
                        'manavik2@gmail.com',
                        style: smallSecondaryTextStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NeumorphicWidgetsBuilder.buildFunctionalBeautyContainer(
                      text: 'WI-FI',
                      iconData: Icons.wifi,
                    ),
                    const SizedBox(height: 24),
                    NeumorphicWidgetsBuilder.buildFunctionalBeautyContainer(
                      text: 'Bluetooth',
                      iconData: Icons.bluetooth,
                    ),
                  ],
                ),
              ],
            ),
              const SizedBox(
              height: 20,
            ),
            const TextRow (),
            const SizedBox(
              height: 120,
            ),
            const RowIcon(),
          ],
        ),
      ),
    );
  }
}
