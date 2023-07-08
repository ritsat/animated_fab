import 'package:flutter/material.dart';
import 'package:full_expandable_fab/full_expandable_fab.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final GlobalKey<ExpandableFabState> keyFab = GlobalKey<ExpandableFabState>();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FullExpandableFab(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Full Expandable FAB example"),
        ),
        body: const Center(
          child: Text(
            'Hello, World!',
          ),
        ),
      ),
      innerChild: Column(
        children: [
          const Text('Inner widget'),
          const TextField(),
          ElevatedButton(
              onPressed: () {
                keyFab.currentState?.close();
              },
              child: const Text('Close me')
          )
        ],
      ),
      icon: const Icon(Icons.plus_one, color: Colors.white,),
      backgroundColor: Colors.white,
      closeIconColor: Colors.black,
      buttonBackgroundColor: Colors.blue,
      duration: const Duration(milliseconds: 500),
      key: keyFab,
    );
  }
}