import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget androidContent() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome, Android User!"),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome, Android User!"),
          ],
        ),
      ),
    );
  }

  Widget iosContent() {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Welcome, iOS User!"),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome, iOS User!"),
          ],
        ),
      ),
    );
  }

  Widget showPlatformContent() {
    if (kIsWeb) {
      return const Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome, Web User!",
            )
          ],
        ),
      ));
    }

    if (Platform.isAndroid) {
      return androidContent();
    }

    return iosContent();
  }

  @override
  Widget build(BuildContext context) {
    return showPlatformContent();
  }
}
