import 'package:flutter/material.dart';

Widget TopicMpesa() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('MPESA STATEMENTS',
          style: TextStyle(
              fontSize: 14, color: const Color.fromARGB(255, 88, 88, 88))),
      TextButton(
          onPressed: () {},
          child: Text('SEE ALL',
              style: TextStyle(
                  fontSize: 12, color: const Color.fromARGB(255, 10, 177, 4))))
    ],
  );
}
