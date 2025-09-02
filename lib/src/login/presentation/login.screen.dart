import 'package:challenge_app/src/home/presentation/welcome.screen.dart';
import 'package:challenge_app/src/login/domain/auth.controller.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController _authController = AuthController();

  final TextEditingController _usernameTextController = TextEditingController();

  final TextEditingController _passwordTextController = TextEditingController();

  bool loading = false;

  Future<void> loginAction() async {
    try {
      changeLoading(true);

      await _authController.login(
        username: _usernameTextController.text,
        password: _passwordTextController.text,
      );

      changeLoading(false);

      redirectToWelcomeScreen();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Something went wrong, please try again.',
          ),
        ),
      );
    } finally {
      changeLoading(false);
    }
  }

  void changeLoading(bool value) {
    setState(() {
      loading = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _usernameTextController,
                decoration: const InputDecoration(hintText: "Username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                8,
                8,
                8,
                20,
              ),
              child: TextField(
                obscureText: true,
                controller: _passwordTextController,
                decoration: const InputDecoration(hintText: "Password"),
              ),
            ),
            loading
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : ElevatedButton(
                    onPressed: () {
                      loginAction();
                    },
                    child: const Text('Login'),
                  ),
          ],
        ),
      ),
    );
  }

  void redirectToWelcomeScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const WelcomeScreen();
        },
      ),
    );
  }
}
