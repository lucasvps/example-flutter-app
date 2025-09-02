// ignore_for_file: library_private_types_in_public_api

import 'package:challenge_app/src/login/presentation/login.screen.dart';
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
        body: const LoginScreen(),
      ),
    );
  }
}
