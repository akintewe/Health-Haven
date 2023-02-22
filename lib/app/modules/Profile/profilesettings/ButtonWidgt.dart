import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
    String text='';
  bool ispressed=false;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
                    onTap: () {
                      ispressed = !ispressed;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: ispressed ? AppColors.primary : AppColors.white,
                            border: Border.all(
                              color: Color.fromARGB(255, 12, 80, 136),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                             ispressed? 'Invited' :'Invite',
                              style: TextStyle(
                                color:ispressed ? AppColors.white : AppColors.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
    );
  }
}