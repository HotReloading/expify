import 'package:expify/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final emailController = TextEditingController();
  final newPasswordController = TextEditingController();
  final rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightGrey,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://img.freepik.com/premium-vector/forgot-password-concept-illustration_114360-1095.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              Center(
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Appcolors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              Center(
                child: Text(
                  "Reset Password easily",
                  style: TextStyle(color: Appcolors.darkGrey),
                ),
              ),
              const SizedBox(height: 30),

              Text(
                "Email Address",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Appcolors.black,
                ),
              ),
              const SizedBox(height: 5),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Appcolors.white,
                  hintText: "name@example.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "New Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Appcolors.black,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: newPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "********",
                  filled: true,
                  fillColor: Appcolors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Re-enter Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Appcolors.black,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: rePasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "********",
                  filled: true,
                  fillColor: Appcolors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Send Reset Link",
                    style: TextStyle(fontSize: 16, color: Appcolors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
