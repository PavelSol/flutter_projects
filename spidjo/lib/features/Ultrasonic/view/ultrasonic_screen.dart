import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      title: 'UltraSonic Range Finder',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
          primarySwatch: Colors.blue,
          dividerColor: Colors.grey,
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              backgroundColor: Color.fromARGB(255, 31, 31, 31),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ))),
      home: const Ultrasonic(),
    );
  }
}

class Ultrasonic extends StatefulWidget {
  const Ultrasonic({Key? key}) : super(key: key);

  @override
  State<Ultrasonic> createState() => _UltrasonicState();
}

class _UltrasonicState extends State<Ultrasonic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.bottomStart,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 0, 209),
        title: const Text('UltraSonic Range Finder'),
        toolbarHeight: 40,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.grey,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Joystick(
                      listener: (details) {
                        setState(() {
                          print(details.x * 1000);
                          print(details.y * 1000);
                        });
                      },
                      mode: JoystickMode.horizontal,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
