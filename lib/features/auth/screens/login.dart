import 'package:expify/features/auth/screens/Reset_password.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ResetPasswordPage(),
              ),
            );
          },
          child: const Text("Login"),
        ),
      ),
    );
  }
}
