import 'package:flutter/material.dart';

class RoundedSearchBar extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const RoundedSearchBar({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              onChanged: onChanged,
              decoration: const InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
              ),
            ),
          ),
          const Icon(Icons.search),
        ],
      ),
    );
  }
}