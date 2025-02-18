import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mpesa/clouds/authenticate.dart';
import 'package:mpesa/sharables/balance/balancecheck.dart';
import 'package:mpesa/sharables/button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mpesa/sharables/balance/balancecheck.dart';
import 'package:mpesa/sharables/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Money extends ConsumerStatefulWidget {
  const Money({super.key});

  @override
  ConsumerState<Money> createState() => _MoneyState();
}

class _MoneyState extends ConsumerState<Money> {
  String sucesful = '';
  TextEditingController number = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController ammount = TextEditingController();

  Future<void> addTransactions(String number, String name, String date,
      String time, String amount, String uid) async {
    try {
      await FirebaseFirestore.instance
          .collection('transactions')
          .doc(uid)
          .collection('usertransactions')
          .add({
        'number': number,
        'name': name,
        'date': date,
        'time': time,
        'amount': amount,
        "timestamp": FieldValue.serverTimestamp(),
      });
      setState(() {
        sucesful = 'transaction sucesfull';
      });
      print("Transaction Added Successfully");
    } catch (error) {
      print("Error adding transaction: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEND MONEY'),
      ),
      body: Container(
        child: Column(
          spacing: 10,
          children: [
            TextField(
              controller: ammount,
              style: TextStyle(
                  color: Colors.black12,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
              decoration:
                  friends.copyWith(labelText: 'ammount', hintText: 'ammount'),
            ),
            TextField(
              controller: time,
              style: TextStyle(
                  color: Colors.black12,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
              decoration: friends.copyWith(labelText: 'time', hintText: 'time'),
            ),
            TextField(
              controller: date,
              style: TextStyle(
                  color: Colors.black12,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
              decoration: friends.copyWith(labelText: 'date', hintText: 'date'),
            ),
            TextField(
              controller: number,
              style: TextStyle(
                  color: Colors.black12,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
              decoration:
                  friends.copyWith(labelText: 'number', hintText: 'number'),
            ),
            TextField(
                controller: name,
                style: TextStyle(
                    color: Colors.black12,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
                decoration:
                    friends.copyWith(hintText: 'name', labelText: 'name')),
            ElevatedButton(
              onPressed: () {
                final numberr = number.text;
                final datee = date.text;
                final namee = name.text;
                final timee = time.text;
                final amount = ammount.text;
                final hapens = ref.watch(MichelProvider);

                addTransactions(
                    numberr, namee, datee, timee, amount, hapens.value!);
              },
              child: Text("ADD "),
            ),
            Text(sucesful)
          ],
        ),
      ),
    );
  }
}
