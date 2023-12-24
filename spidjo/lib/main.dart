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
      title: 'Spider-robot joystick',
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
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.bottomStart,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 0, 209),
        title: const Text('Spider-robot Joystick'),
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
                      mode: JoystickMode.vertical,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blueGrey),
                        minimumSize: MaterialStatePropertyAll(Size(75, 120)),
                      ),
                      child: const Text("data"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blueGrey),
                        minimumSize: MaterialStatePropertyAll(Size(75, 120)),
                      ),
                      child: const Text("data1"),
                    ),
                    Joystick(
                      listener: (details) {
                        setState(() {
                          print(details.x * 1000);
                          print(details.y * 1000);
                        });
                      },
                      mode: JoystickMode.horizontal,
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Ultrasonic"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
