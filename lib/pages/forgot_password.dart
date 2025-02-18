import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mpesa/clouds/authenticate.dart';

class ForgotPassword extends ConsumerStatefulWidget {
  const ForgotPassword({super.key});

  @override
  ConsumerState<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();
  String? message; // To store success/error messages

  Future<void> resetPassword() async {
    final auth = ref.read(NobodyProvider); // Get Auth instance
    final result = await auth.ForgotPassword(emailController.text.trim());

    setState(() {
      message = result; // Update UI with response message
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset Password")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter your email to reset your password:"),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: resetPassword,
              child: Text("Send Reset Link"),
            ),
            if (message != null) ...[
              SizedBox(height: 20),
              Text(message!, style: TextStyle(color: Colors.red)),
            ],
          ],
        ),
      ),
    );
  }
}
