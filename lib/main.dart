import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// header
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

// body
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        // body: Text("Hello World"),
        body: Column(
          children: [
            const Text("helloworld"),
            const Text("happy hacking!"),
            TextButton(
              onPressed: () => {print('puressed button!!')},
              child: const Text("Text Button"),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 24.0,
                  )
                ]),
          ],
        ));
  }
}
