import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, $name"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: TextButton(
          onPressed: () {
            Navigator.of(context).pop("This is data from the second screen");
          },
          child: const Text("Back")),
    );
  }
}
