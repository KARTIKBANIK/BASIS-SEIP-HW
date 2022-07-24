import 'package:day_19/pages/page1.dart';
import 'package:day_19/pages/page2.dart';
import 'package:day_19/pages/page3.dart';
import 'package:day_19/pages/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSS extends StatefulWidget {
  const LiquidSS({Key? key}) : super(key: key);

  @override
  State<LiquidSS> createState() => _LiquidSSState();
}

class _LiquidSSState extends State<LiquidSS> {
  final pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(pages: pages),
    );
  }
}
