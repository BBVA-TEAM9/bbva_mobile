import 'package:bbva_mobile/components/item_filter_map.dart';
import 'package:bbva_mobile/pages/map/map_controller.dart';
import 'package:bbva_mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapPage extends StatelessWidget {

  MapController controller = Get.put(MapController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Container(
                color: ColorsApp.blueDark,
                width: double.infinity,
                height: controller.height*.2,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back, size: 30, color: Colors.white)
                        ),
                        Text("Puntos de atención", style: TextStyle(color: Colors.white70, fontSize: 18, fontWeight: FontWeight.w300)),
                        SizedBox(width: 30,)
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: ColorsApp.blue,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(15),
                                  child: Text("Introduce tu búsqueda", style: TextStyle(color: Colors.white70, fontSize: 16)),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 1,
                                  thickness: 1,
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: ColorsApp.blueLight,
                            padding: EdgeInsets.all(11),
                            child: const Icon(Icons.search, color: Colors.white, size: 28),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  Positioned.fill(
                    top: -18,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Row(
                              children: [
                                ItemFilterMap("Oficinas", ColorsApp.blue),
                                ItemFilterMap("Cajeros", ColorsApp.greenV),
                                ItemFilterMap("Agentes", Colors.deepPurpleAccent)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
