import 'package:flutter/material.dart';
import 'package:mpesa/sharables/class/transactionHistory.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final nikita = History(
      name: 'PETER WAWERU',
      Number: '0790522488',
      ammount: '1500',
      date: '15 FEB 01:30 PM');
  @override
  Widget build(BuildContext context) {
    return Row(
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
                  Text(nikita.name,
                      style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 88, 88, 88))),
                  Text(nikita.Number,
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
            Text('+KSH.${nikita.ammount}',
                style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 88, 88, 88))),
            Text(nikita.date,
                style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 134, 133, 133)))
          ],
        )
      ],
    );
  }
}
