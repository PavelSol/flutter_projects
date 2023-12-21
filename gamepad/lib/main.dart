import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => Spider(title: "Gamepad for spider-robot"),
        '/Ultrasonic': (context) => Ultrasonic(),
      },
    );
  }
}

class Spider extends StatefulWidget {
  const Spider({super.key, required this.title});

  final String title;

  @override
  State<Spider> createState() => _SpiderState();
}

class _SpiderState extends State<Spider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Привет"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/png/ultrasonic.png'),
            iconSize: 500,
          ),
          ElevatedButton(onPressed: () {}, child: Text("data"))
        ],
      ),
    );*/
      body: Padding(
        padding: EdgeInsets.all(150),
        child: ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.abc),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/Ultrasonic');
        },
        tooltip: 'Ultrasonic',
        child: Image.asset('assets/png/ultrasonic.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Ultrasonic extends StatefulWidget {
  const Ultrasonic({super.key});

  @override
  State<Ultrasonic> createState() => _UltrasonicState();
}

class _UltrasonicState extends State<Ultrasonic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ultrasonic range finder"),
      ),
    );
  }
}
