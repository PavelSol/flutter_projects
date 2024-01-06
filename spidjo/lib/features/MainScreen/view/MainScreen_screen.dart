import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';
import 'package:spidjo/features/Ultrasonic/view/ultrasonic_screen.dart';

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
      backgroundColor: Colors.green,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blueGrey),
                          minimumSize: MaterialStatePropertyAll(Size(50, 50)),
                        ),
                        icon: const Icon(
                          Icons.arrow_circle_left,
                          color: Colors.white,
                          size: 30,
                        ),
                        label: const Text(
                          "Rotate",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Joystick(
                        listener: (details) {
                          setState(() {
                            double temp = details.y * 1000;
                            if (temp > 0) {
                              print("Down $temp");
                            } else {
                              print("Up $temp");
                            }
                          });
                        },
                        mode: JoystickMode.vertical,
                      ),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blueGrey),
                          minimumSize: MaterialStatePropertyAll(Size(100, 50)),
                        ),
                        child: const Text("Sit",
                            style: TextStyle(color: Colors.white)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blueGrey),
                          minimumSize: MaterialStatePropertyAll(Size(100, 50)),
                        ),
                        child: const Text("Dance",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ]),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Ultrasonic(),
                        ),
                      );
                    },
                    child: const Text("Ultrasonic"),
                  )
                ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blueGrey),
                          minimumSize: MaterialStatePropertyAll(Size(100, 50)),
                        ),
                        child: const Text("Stand",
                            style: TextStyle(color: Colors.white)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blueGrey),
                          minimumSize: MaterialStatePropertyAll(Size(100, 50)),
                        ),
                        child: const Text("Wave",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blueGrey),
                          minimumSize: MaterialStatePropertyAll(Size(50, 50)),
                        ),
                        icon: const Icon(
                          Icons.arrow_circle_right,
                          color: Colors.white,
                          size: 30,
                        ),
                        label: const Text(
                          "Rotate",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Joystick(
                        listener: (details) {
                          setState(() {
                            double temp = details.x * 1000;
                            if (temp > 0) {
                              print("Right $temp");
                            } else {
                              print("Left $temp");
                            }
                          });
                        },
                        mode: JoystickMode.horizontal,
                      )
                    ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
