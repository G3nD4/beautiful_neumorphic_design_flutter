import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:new_design_test/text_styles.dart';
import 'package:new_design_test/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = false;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 223, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 223, 227),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NeumorphicWidgetsBuilder.buildBeautyContainer(
              width: 224,
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
      ),
    );
  }
}
