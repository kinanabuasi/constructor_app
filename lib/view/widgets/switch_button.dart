import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      splashRadius: 50,
      // This bool value toggles the switch.
      value: light,
      activeColor: const Color.fromRGBO(1, 41, 57, 1),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
