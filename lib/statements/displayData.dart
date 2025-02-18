import 'package:flutter/material.dart';
import 'package:mpesa/statements/individual.dart';

Widget Displaydata(String name, String number, String ammount, String date,
    context, String time) {
  return TextButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => IndividualStatement(
                number: number,
                  name: name, ammount: ammount, date: date, time: time)));
    },
    style: TextButton.styleFrom(
        elevation: 1,
        foregroundColor: const Color.fromARGB(255, 194, 194, 194),
        backgroundColor: Colors.white,
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(2))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 18,
              ),
              SizedBox(
                width: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 88, 88, 88))),
                  Text(number,
                      style: TextStyle(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 134, 133, 133)))
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text('+KSH.${ammount}',
                style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 88, 88, 88))),
            Text(date,
                style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 134, 133, 133)))
          ],
        )
      ],
    ),
  );
}
