import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mpesa/pages/forgot_password.dart';
import 'package:mpesa/pages/home.dart';
import 'package:mpesa/pages/register.dart';
import 'package:mpesa/send/money.dart';
import 'package:mpesa/send/send.dart';
import 'package:mpesa/services/wrapper.dart';
import 'package:mpesa/statements/individual.dart';
import 'package:mpesa/statements/statement.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(
      child: MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Checks(),
      '/register': (context) => Register(),
      '/forgot-password': (context) => ForgotPassword(),
      '/sendmoney': (context) => Send(),
      '/money': (context) => Money()
    },
  )));
}

class Checks extends StatefulWidget {
  const Checks({super.key});

  @override
  State<Checks> createState() => _ChecksState();
}

class _ChecksState extends State<Checks> {
  @override
  Widget build(BuildContext context) {
    return Wrapper();
  }
}
