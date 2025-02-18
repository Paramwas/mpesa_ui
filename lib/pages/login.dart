import 'package:flutter/material.dart';
import 'package:mpesa/clouds/authenticate.dart';
import 'package:mpesa/pages/register.dart';
import 'package:mpesa/sharables/button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Login', style: heading),
              TextButton.icon(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/register');
                  },
                  icon: Icon(
                    Icons.app_registration_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  label: Text('register',
                      style: love.copyWith(color: Colors.white))),
            ],
          ),
          Container(
            child: Column(
              spacing: 60,
              children: [
                TextField(
                    controller: username,
                    style: TextStyle(
                        color: Colors.black12,
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                    decoration: friends),
                TextField(
                    controller: password,
                    style: TextStyle(
                        color: Colors.black12,
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                    decoration: friends.copyWith(
                        hintText: 'password', labelText: 'password'))
              ],
            ),
          ),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () async {
                  final emal = username.text;
                  final pass = password.text;
                  await Auth().Sigin(emal, pass);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 208, 238, 209)),
                label: Text('login', style: love),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/forgot-password'); // Navigate to Reset Page
                },
                child: Text("Forgot Password?"),
              ),
            ],
          )
        ],
      )),
    );
  }
}
