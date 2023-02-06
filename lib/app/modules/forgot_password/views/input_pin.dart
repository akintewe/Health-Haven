import 'package:cancer_chat/app/modules/forgot_password/pin.dart';
import 'package:cancer_chat/core/theme/colors.dart';
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
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
            )),
        title: Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Code has been sent to the selected address..')],
          ),
          SizedBox(
            height: 30,
          ),
          DPin(
            buttonColor: Colors.blue,
            buttonText: "Confirm",
            number: 4,
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
