import 'package:bbva_mobile/components/item_drawer.dart';
import 'package:bbva_mobile/pages/login/login_controller.dart';
import 'package:bbva_mobile/utils/colors.dart';
import 'package:bbva_mobile/utils/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Drawer(
        child: Container(
          color: ColorsApp.blueDark,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ItemDrawer("Seguridad y privacidad", Icons.lock),
              GestureDetector(
                onTap: () => Get.toNamed("map"),
                child: ItemDrawer("Puntos de atención", Icons.location_on),
              ),
              ItemDrawer("Comunicate con nosotros", Icons.phone),
              ItemDrawer("Aplicaciones", Icons.apps),
              ItemDrawer("Hazte cliente", Icons.person),
              ItemDrawer("Acerca de BBVA", Icons.info),
            ],
          ),
        ),
      ),
    );
  }
}
