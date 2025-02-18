import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mpesa/clouds/authenticate.dart';
import 'package:mpesa/pages/home.dart';
import 'package:mpesa/pages/login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mpesa/sharables/balance/balancecheck.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class Wrapper extends ConsumerStatefulWidget {
  const Wrapper({super.key});

  @override
  ConsumerState<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends ConsumerState<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final happens = ref.watch(MichelProvider);
    print(happens);
    return happens.when(
      loading: () => CircularProgressIndicator(),
      error: (error, stackTrace) {
        print("Error: $error");
        return Center(child: Text("Error: $error"));
      },
      data: (legos) {
        if (legos == null || legos == "User not found") {
          print(legos);
          return Login();
        } else {
          Future.microtask(() {
            ref.read(enoughuidProvider.notifier).setuid(legos);
          });

          return Home();
        }
      },
    );
  }
}
