import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemDrawer extends StatelessWidget {
  IconData icon;
  String titulo;

  ItemDrawer(this.titulo, this.icon) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          // SvgPicture.asset(image, color: Colors.white, width: 30, height: 30),
          Icon(icon, color: Colors.white),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(titulo, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
