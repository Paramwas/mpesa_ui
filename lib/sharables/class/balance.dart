import 'dart:async';

import 'package:flutter/foundation.dart';

class Balance {
  final String ammount;
  final String fuliza;
  Balance({required this.ammount, required this.fuliza});

  factory Balance.fromMap(Map<String, dynamic> data) {
    return Balance(ammount: data['balance'], fuliza: data['fuliza']);
  }
}
