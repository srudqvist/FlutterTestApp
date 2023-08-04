import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  // Declare the variable "name"
  final String? name;
  // Initialize the variable "name"
  const FirstPage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, $name"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Back")),
    );
  }
}
