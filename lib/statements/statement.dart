import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mpesa/clouds/authenticate.dart';
import 'package:mpesa/statements/displayData.dart';
import 'package:mpesa/statements/statementclass.dart';

class StatementPage extends ConsumerStatefulWidget {
  final String uid;

  const StatementPage({super.key, required this.uid});
  @override
  ConsumerState<StatementPage> createState() => _StatementPageState();
}

class _StatementPageState extends ConsumerState<StatementPage> {
  List<Statementrecent> weknd = [];

  Future<void> kendrick(String uid) async {
    final snapshot = await FirebaseFirestore.instance
        .collection("transactions")
        .doc(uid)
        .collection("usertransactions")
        .get();

    setState(() {
      weknd = snapshot.docs.map((doc) {
        final data = doc.data();
        return Statementrecent(
          name: data['name'] ?? 'Unknown', // Default to 'Unknown' if null
          number: data['number'] ?? 'Unknown', // Default to 'Unknown' if null
          ammount: data['amount'] ?? 'unknown', // Default to 0.0 if null
          time: data['time'] ?? 'Unknown', // Default to 'Unknown' if null
          date: data['date'] ?? 'Unknown', // Default to 'Unknown' if null
        );
      }).toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kendrick(widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    // Group data by date
    Map<String, List<Statementrecent>> groupedData = {};

    for (var entry in weknd) {
      if (!groupedData.containsKey(entry.date)) {
        groupedData[entry.date] = [];
      }
      groupedData[entry.date]!.add(entry);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'M-PESA STATEMENTS',
          style: TextStyle(color: const Color.fromARGB(255, 27, 27, 27)),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: groupedData.entries.map((entry) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      entry.key, // Date header
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: Color.fromARGB(255, 43, 43, 43),
                      ),
                    ),
                  ),
                  // Displaying transactions under the date
                  ...entry.value.map((mind) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15), // Adds spacing between items
                      child: Displaydata(mind.name, mind.number, mind.ammount,
                          mind.time, context, mind.date),
                    );
                  }).toList(),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
