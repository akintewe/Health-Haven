import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HistoryCard extends StatefulWidget {
  final AssetBundle image;
  final String name;
  final String message;
  final String time;
  const HistoryCard(
      {super.key,
      required this.image,
      required this.name,
      required this.message,
      required this.time});

  @override
  State<HistoryCard> createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        child: Row(
          
        ),
        
      ),
    );
  }
}
