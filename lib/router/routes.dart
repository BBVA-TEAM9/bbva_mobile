

import 'package:get/get.dart';

import '../pages/login/login_page.dart';
import '../pages/map/map_page.dart';

List<GetPage> getApplicationRoutes = [
  GetPage(
    name: '/login',
    page: () => LoginPage()
  ),
  GetPage(
      name: '/map',
      page: () => MapPage()
  )
];