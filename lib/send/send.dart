import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mpesa/sharables/balance/balancecheck.dart';
import 'package:mpesa/sharables/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Send extends ConsumerStatefulWidget {
  const Send({super.key});

  @override
  ConsumerState<Send> createState() => _SendState();
}

class _SendState extends ConsumerState<Send> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEND MONEY'),
      ),
      body: Column(
        children: [
          SearchBar(),
          TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/money');
              },
              child: Row(
                spacing: 5,
                children: [
                  Container(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: const Color.fromARGB(255, 4, 69, 165)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard,
                            color: Colors.white,
                          ))),
                  Text('ENTER PHONE NUMBER',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                          color: const Color.fromARGB(255, 4, 56, 170)))
                ],
              )),
          TextButton(
              onPressed: () {},
              child: Row(
                spacing: 5,
                children: [
                  Container(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: const Color.fromARGB(255, 3, 107, 29)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.people,
                            color: Colors.white,
                          ))),
                  Text('SEND TO MANY',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                          color: const Color.fromARGB(255, 32, 32, 32)))
                ],
              )),
          TextButton(
              onPressed: () {},
              child: Row(
                spacing: 5,
                children: [
                  Container(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: const Color.fromARGB(255, 5, 104, 161)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.qr_code,
                            color: Colors.white,
                          ))),
                  Text('SEND TO MANY',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                          color: const Color.fromARGB(255, 37, 37, 37)))
                ],
              )),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'FREQUENTLY',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13),
            ),
          ])
        ],
      ),
    );
  }
}
