import 'package:flutter/material.dart';

final appBar = AppBar(
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
  title: const Text(
    "Gallery Portfolio",
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
  ),
  backgroundColor: const Color.fromARGB(255, 34, 34, 34),
);
