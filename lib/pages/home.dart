// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mpesa/clouds/authenticate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mpesa/pages/login.dart';
import 'package:mpesa/sharables/advert.dart';
import 'package:mpesa/sharables/balance.dart';
import 'package:mpesa/sharables/class/balance.dart';
import 'package:mpesa/sharables/mpesaTopic.dart';
import 'package:mpesa/sharables/payment_button.dart';
import 'package:mpesa/sharables/profile.dart';
import 'package:mpesa/sharables/recentTransaction.dart';
import 'package:mpesa/statements/statement.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  bool _textvisibility = true;
  CarouselController believe = CarouselController();
  final String img =
      'https://media.istockphoto.com/id/1398927206/photo/close-up-portrait-of-smiling-african-american-woman-coco-with-arms-crossed-3d-rendering-on.webp?s=1024x1024&w=is&k=20&c=jPBj5AHvi8AIkf0Q5sBZHAXxlhzl0u_qFwoN-zNVQwg=';

  @override
  Widget build(BuildContext context) {
    final curve = ref.watch(MichelProvider);
    print(curve);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Tab(
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // Add padding if needed
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    profile_hoto(img),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Evening',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                        Text(
                          'PETER',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        )
                      ],
                    )
                  ],
                )),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.grey,
                            size: 22,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.history_rounded,
                            color: Colors.grey,
                            size: 22,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Colors.grey,
                            size: 22,
                          )),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 30,
            children: [
              Center(child: UserBalanceCard()),
              Balancebutton(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('MPESA STATEMENTS',
                          style: TextStyle(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 88, 88, 88))),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StatementPage(
                                        uid: curve.value.toString())));
                          },
                          child: Text('SEE ALL',
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      const Color.fromARGB(255, 10, 177, 4))))
                    ],
                  ),
                  Transaction()
                ],
              ),
              Adverts(),
              Container(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'FINANCIAL SERVICES',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 17),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('SEE ALL',
                                style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        const Color.fromARGB(255, 10, 177, 4))))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                    decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                        color: Colors.green),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_to_drive_rounded,
                                          color: Colors.white,
                                        ))),
                                Text('Mshwari',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                            255, 58, 58, 58)))
                              ],
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                    decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                        color: const Color.fromARGB(
                                            255, 3, 51, 83)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.comment_bank_rounded,
                                          color: Colors.white,
                                        ))),
                                Text('KCB MPESA',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                            255, 58, 58, 58)))
                              ],
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                    decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                        color: const Color.fromARGB(
                                            255, 3, 51, 83)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.grid_goldenratio_rounded,
                                          color: Colors.white,
                                        ))),
                                Text('MALI',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                            255, 58, 58, 58)))
                              ],
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                    decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                        color: const Color.fromARGB(
                                            255, 89, 218, 121)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.military_tech_outlined,
                                          color: Colors.white,
                                        ))),
                                Text('ZIIDI',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                            255, 58, 58, 58)))
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
