import 'package:d_pin/d_pin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PinInput extends StatefulWidget {
  const PinInput({super.key});

  @override
  State<PinInput> createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DPin(
            buttonColor: Colors.blue,
            buttonText: "Confirm",
            number: 6,
            fieldBorderColor: Colors.blue,
            withButton: true,
            onValueChanged: (v) {
              setState(() {
                value = v;
              });
            },
          )
        ],
      ),
    );
  }
}
fefffdfffdfdfdffffff