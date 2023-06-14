import 'package:flutter/material.dart';

class NumberButtons extends StatefulWidget {
  const NumberButtons({super.key});

  @override
  State<NumberButtons> createState() {
    return _NumberButtons();
  }
}

class _NumberButtons extends State<NumberButtons> {
  int initialNumber = 0;

  void increment() {
    setState(() {
      initialNumber += 1;
    });
  }

  void decrement() {
    setState(() {
      initialNumber -= 1;
    });
  }

  void reset() {
    setState(() {
      initialNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          initialNumber.toString(),
          style: const TextStyle(fontSize: 160, color: Colors.white),
        ),
        const SizedBox(height: 52),
        ElevatedButton(
          onPressed: reset,
          child: const Text(
            "RESET",
            style: TextStyle(fontSize: 52, color: Colors.white),
          ),
        ),
        const SizedBox(height: 52),
        ElevatedButton(
          onPressed: increment,
          child: const Text(
            "INCREMENT",
            style: TextStyle(fontSize: 52, color: Colors.white),
          ),
        ),
        const SizedBox(height: 52),
        ElevatedButton(
          onPressed: decrement,
          child: const Text(
            "DECREMENT",
            style: TextStyle(fontSize: 52, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
