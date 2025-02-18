import 'package:flutter/material.dart';

class Balancebutton extends StatefulWidget {
  const Balancebutton({super.key});

  @override
  State<Balancebutton> createState() => _BalancebuttonState();
}

class _BalancebuttonState extends State<Balancebutton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sendmoney');
            },
            child: Column(
              children: [
                Container(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: const Color.fromARGB(255, 89, 218, 121)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sendmoney');
                        },
                        icon: Icon(
                          Icons.send_and_archive_rounded,
                          color: Colors.white,
                        ))),
                Container(
                  width: 70,
                  child: Text(
                    'SEND AND REQUEST ',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                    textAlign: TextAlign.center, // Center text
                  ),
                ),
              ],
            )),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sendmoney');
            },
            child: Column(
              children: [
                Container(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: const Color.fromARGB(255, 20, 104, 231)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.payment_rounded,
                          color: Colors.white,
                        ))),
                Container(
                  width: 70,
                  child: Text(
                    'PAY ',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                    textAlign: TextAlign.center, // Center text
                  ),
                ),
              ],
            )),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sendmoney');
            },
            child: Column(
              children: [
                Container(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: const Color.fromARGB(255, 233, 93, 93)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.wallet_rounded,
                          color: Colors.white,
                        ))),
                Container(
                  width: 70,
                  child: Text(
                    'WITHDRAW ',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                    textAlign: TextAlign.center, // Center text
                  ),
                ),
              ],
            )),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sendmoney');
            },
            child: Column(
              children: [
                Container(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: const Color.fromARGB(255, 11, 169, 180)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send_and_archive_rounded,
                          color: Colors.white,
                        ))),
                Container(
                  width: 70,
                  child: Text(
                    'AIRTIME ',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                    textAlign: TextAlign.center, // Center text
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
