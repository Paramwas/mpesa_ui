import 'package:flutter/material.dart';
import 'package:mpesa/sharables/profile.dart';

class IndividualStatement extends StatefulWidget {
  final String name;
  final String ammount;
  final String date;
  final String time;
  final String number;
  const IndividualStatement(
      {super.key,
      required this.number,
      required this.name,
      required this.ammount,
      required this.date,
      required this.time});

  @override
  State<IndividualStatement> createState() => _IndividualStatementState();
}

class _IndividualStatementState extends State<IndividualStatement> {
  final String payment = 'PAYBILL';
  final String ammount = '700';
  final String date = '13 FEB ,01:23 PM';
  final String sender = 'MKOPA LTD';
  final String paybillnu = '234 234';
  final String img =
      'https://media.istockphoto.com/id/1398927206/photo/close-up-portrait-of-smiling-african-american-woman-coco-with-arms-crossed-3d-rendering-on.webp?s=1024x1024&w=is&k=20&c=jPBj5AHvi8AIkf0Q5sBZHAXxlhzl0u_qFwoN-zNVQwg=';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('${widget.time},${widget.date}'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      payment,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: const Color.fromARGB(255, 104, 104, 104)),
                    ),
                    profile_hoto(img),
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 88, 88, 88)),
                    ),
                    Text(
                      '+ KSH .${widget.ammount}.00',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 35),
                    ),
                    Text(
                      'ID: TDGA2345JF',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 56, 182, 6)),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 245, 231, 224)),
                        child: Text('GENERAL',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 13,
                                color: const Color.fromARGB(255, 199, 97, 2)))),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'PAY BILL NUMBER',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color:
                                      const Color.fromARGB(255, 172, 170, 170)),
                            ),
                            Text(''),
                            Text(''),
                            Text('')
                          ],
                        ),
                        Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '${widget.number}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: const Color.fromARGB(255, 66, 66, 66)),
                            ),
                            Text(''),
                            Text(''),
                            Text('')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                                color:
                                    const Color.fromARGB(255, 252, 252, 252)),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_to_drive_rounded,
                                  size: 33,
                                  color: const Color.fromARGB(255, 54, 54, 54),
                                ))),
                        Container(
                          width: 77,
                          child: Text('ADD TO FAVORITES',
                              style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 58, 58, 58))),
                        )
                      ],
                    )),
                TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Container(
                            decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color:
                                    const Color.fromARGB(255, 252, 252, 252)),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.receipt_long,
                                  size: 33,
                                  color: const Color.fromARGB(255, 54, 54, 54),
                                ))),
                        Container(
                          width: 77,
                          child: Text('DOWNLOAD RECEIPT',
                              style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 58, 58, 58))),
                        )
                      ],
                    )),
                TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Container(
                            decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color:
                                    const Color.fromARGB(255, 252, 252, 252)),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  size: 33,
                                  color: const Color.fromARGB(255, 54, 54, 54),
                                ))),
                        Container(
                          width: 75,
                          child: Text('SHARE DETAILS',
                              style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 58, 58, 58))),
                        )
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
