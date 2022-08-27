import 'package:bbva_mobile/utils/colors.dart';
import 'package:flutter/material.dart';

class ItemFilterMap extends StatelessWidget {
  String title;
  Color color;

  ItemFilterMap(this.title, this.color) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color
            ),
            child: Icon(Icons.check, color: Colors.white, size: 20),
          ),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
