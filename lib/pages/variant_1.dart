import 'package:flutter/material.dart';
import 'package:zaptek_tini/bottom_nav_bar_widget.dart';

class Variant1 extends StatefulWidget {
  const Variant1({super.key});

  @override
  State<Variant1> createState() => _Variant1State();
}

class _Variant1State extends State<Variant1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar()
    );
  }
}
