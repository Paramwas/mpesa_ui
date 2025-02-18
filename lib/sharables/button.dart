import 'package:flutter/material.dart';

const friends = InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 5, 83, 2)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: const Color.fromARGB(255, 21, 61, 2), width: 3),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    fillColor: Colors.white,
    labelText: 'username',
    labelStyle: TextStyle(
        color: const Color.fromARGB(204, 0, 0, 0),
        fontSize: 15,
        fontStyle: FontStyle.italic),
    filled: true,
    hintText: 'username@gmail.com',
    hintStyle: TextStyle(
        color: const Color.fromARGB(197, 0, 0, 0),
        fontSize: 15,
        fontStyle: FontStyle.italic));

const love = TextStyle(
    color: const Color.fromARGB(255, 3, 3, 3),
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal);

const heading = TextStyle(
    color: const Color.fromARGB(255, 255, 251, 251),
    fontSize: 25,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal);
