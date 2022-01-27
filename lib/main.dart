import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juice_app/home.dart';
import 'package:juice_app/page2.dart';

void main() {
  runApp(JuiceApp());
}

class JuiceApp extends StatelessWidget {
  const JuiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
