import 'package:flutter/material.dart';

Widget profile_hoto(img) {
  return CircleAvatar(
    backgroundImage: NetworkImage(img),
    radius: 25,
  );
}
