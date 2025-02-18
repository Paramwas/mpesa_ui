import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mpesa/clouds/authenticate.dart';
import 'package:mpesa/pages/login.dart';
import 'package:mpesa/services/dataDisplay.dart';
import 'package:mpesa/sharables/balance.dart';
import 'package:mpesa/sharables/balance/balancecheck.dart';
import 'package:mpesa/sharables/class/balance.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Separate widget for displaying user balance
class UserBalanceCard extends ConsumerStatefulWidget {
  @override
  _UserBalanceCardState createState() => _UserBalanceCardState();
}

class _UserBalanceCardState extends ConsumerState<UserBalanceCard> {
  bool _textVisibility = true;
  Balance? _balance;

  @override
  void initState() {
    super.initState();

    Future.microtask(() => _fetchBalance());
  }

  Future<void> _fetchBalance() async {
    final winner = ref.watch(enoughuidProvider);

    final pill = await FirebaseFirestore.instance
        .collection('ProfileDetails')
        .doc(winner)
        .get();

    if (pill.exists && pill.data() != null) {
      if (mounted) {
        setState(() {
          _balance = Balance.fromMap(pill.data()!);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text(
              'BALANCE',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _textVisibility
                    ? Text(
                        'KSH.${_balance?.ammount ?? "0.00"}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 54, 54, 54),
                          fontSize: 25,
                        ),
                      )
                    : Container(
                        height: 40,
                        width: 120,
                        color: Color.fromARGB(24, 114, 113, 113),
                      ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _textVisibility = !_textVisibility;
                    });
                  },
                  icon: Icon(_textVisibility
                      ? Icons.visibility_off
                      : Icons.visibility),
                )
              ],
            ),
          ),
          Text(
            'AVAILABLE FULIZA: KSH. ${_balance?.fuliza ?? "0.00"}',
            style: TextStyle(
                fontSize: 15, color: const Color.fromARGB(255, 46, 123, 240)),
          ),
        ],
      ),
    );
  }
}
