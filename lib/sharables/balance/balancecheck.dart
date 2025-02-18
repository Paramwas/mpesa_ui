import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mpesa/clouds/authenticate.dart';
import 'package:mpesa/pages/login.dart';
import 'package:mpesa/services/dataDisplay.dart';
import 'package:mpesa/sharables/balance.dart';
import 'package:mpesa/sharables/class/balance.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'balancecheck.g.dart';

@riverpod
class Enoughuid extends _$Enoughuid {
  @override
  String build() {
    return "";
  }

  void setuid(String uid) {
    state = uid;
  }
}
