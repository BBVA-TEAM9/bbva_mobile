import 'package:bbva_mobile/components/custom_drawer.dart';
import 'package:bbva_mobile/components/item_drawer.dart';
import 'package:bbva_mobile/pages/login/login_controller.dart';
import 'package:bbva_mobile/utils/colors.dart';
import 'package:bbva_mobile/utils/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: controller.scaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    color: Colors.black
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Image.asset(Resources.bbva_white, width: 150, height: 80),
                        IconButton(onPressed: () => controller.openDrawer(), icon: const Icon(Icons.menu, color: Colors.white, size: 30))
                      ],
                    ),
                    const SizedBox()
                  ],
                )
            ),
            Expanded(
              child: Container(
                color: ColorsApp.blueDark,
                padding: const EdgeInsets.only(top: 25, bottom: 20, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                color: ColorsApp.blueLight,
                                width: double.infinity,
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("Documento de identidad", style: TextStyle(fontSize: 12, color: Colors.white60)),
                                        Text("DNI", style: TextStyle(fontSize: 16, color: Colors.white60))
                                      ],
                                    ),
                                    const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 25)
                                  ],
                                )
                            ),
                            const Divider(thickness: 2, color: Colors.white60, height: 0)
                          ],
                        ),
                        const SizedBox(height: 12),
                        Column(
                          children: [
                            Container(
                                color: ColorsApp.blueLight,
                                width: double.infinity,
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                                child: const Text("Número de documento", style: TextStyle(fontSize: 16, color: Colors.white60))
                            ),
                            const Divider(thickness: 2, color: Colors.white60, height: 0)
                          ],
                        ),
                        const SizedBox(height: 60),
                        MaterialButton(
                          onPressed: (){},
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                          child: const Text("Continuar", style: TextStyle(fontSize: 14, color: Colors.white38),),
                          color: Colors.white30,
                        )
                      ],
                    ),
                    const Text("¿Ingresas por primera vez? ¡Afiliate!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      endDrawer: CustomDrawer(),
    );
  }
}
