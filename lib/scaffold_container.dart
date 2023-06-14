import 'package:counter/number_buttons.dart';
import 'package:flutter/material.dart';

class ScaffoldContainer extends StatelessWidget {
  const ScaffoldContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
              colors: [Colors.redAccent, Colors.purpleAccent],
              tileMode: TileMode.mirror),
        ),
        child: const Center(
          child: NumberButtons()
        ),
      ),
    );
  }
}
