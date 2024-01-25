import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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

  final TextStyle mainTextStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  final TextStyle largeMainTextStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  final TextStyle secondaryTextStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Colors.grey,
  );

  final TextStyle largeSecondaryTextStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: Colors.grey,
  );

  final TextStyle smallSecondaryTextStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.grey,
  );

  final TextStyle boldSecondaryTextStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 223, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 223, 227),
        title: Center(
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
            beautyContainer(
              width: 224,
              height: 224,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  circleBeautyContainer(
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
                  Text(
                    'Hi, Manav!',
                    style: mainTextStyle,
                  ),
                  Text(
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
                functionalBeautyContainer(
                  text: 'WI-FI',
                  iconData: Icons.wifi,
                ),
                const SizedBox(height: 24),
                functionalBeautyContainer(
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

  Widget beautyContainer(
      {Widget? child, double width = 200, double height = 200}) {
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

  Widget circleBeautyContainer(
      {Widget? child, double width = 200, double height = 200}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 220, 223, 227),
        // borderRadius: BorderRadius.circular(30.0),
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

  Widget functionalBeautyContainer(
      {required String text, required IconData iconData}) {
    return beautyContainer(
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
                Text(
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
}
