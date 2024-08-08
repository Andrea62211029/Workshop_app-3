import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
    ));
  }
}

// ignore: use_key_in_widget_constructors
class ParentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Parent Widget"),
      ),
      body: ChildWidget(data: 'Hello from Parent!'),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final String data;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ChildWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(data),
    );
  }
}
