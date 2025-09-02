// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example App'),
        ),
        body: const ExampleAppWidget(),
      ),
    );
  }
}

class ExampleAppWidget extends StatefulWidget {
  const ExampleAppWidget({super.key});

  @override
  _ExampleAppWidgetState createState() => _ExampleAppWidgetState();
}

class _ExampleAppWidgetState extends State<ExampleAppWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Here is your example app',
      ),
    );
  }
}