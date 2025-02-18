import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mpesa/sharables/button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mpesa/clouds/authenticate.dart';
import 'package:mpesa/services/dataDisplay.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController emmail = TextEditingController();

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
              Text('Register', style: heading),
              TextButton.icon(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/');
                  },
                  icon: Icon(
                    Icons.person_off_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  label:
                      Text('login', style: love.copyWith(color: Colors.white))),
            ],
          ),
          Container(
            child: Column(
              spacing: 60,
              children: [
                TextField(
                    controller: emmail,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                    decoration: friends),
                TextField(
                    controller: password,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                    decoration: friends.copyWith(
                        hintText: 'password', labelText: 'password')),
                TextField(
                  controller: username,
                  decoration: friends.copyWith(
                      hintText: 'enter username', labelText: 'username'),
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
          ElevatedButton.icon(
            onPressed: () async {
              final eemail = emmail.text;
              final pasword = password.text;
              final usename = username.text;
              await Auth().Register(eemail, usename, pasword);
              await Auth().Sigin(eemail, pasword);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 208, 238, 209)),
            label: Text('login', style: love),
          )
        ],
      )),
    );
  }
}
