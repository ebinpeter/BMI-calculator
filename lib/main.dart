import 'package:bpmcalculator/screeen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "BMI Calculator ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Homescreen(),
    ),
  );
}
