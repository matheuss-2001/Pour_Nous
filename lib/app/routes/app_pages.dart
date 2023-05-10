import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pour_nous/app/routes/app_routes.dart';
import 'package:pour_nous/ui/home/binding/central_command_binding.dart';
import 'package:pour_nous/ui/home/pages/central_command_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.CENTRALCOMMAND,
      page: () => const CentralCommandPage(),
      binding: CentralCommandBinding()
    ),


  ];
}
