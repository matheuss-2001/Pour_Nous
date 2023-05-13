import 'package:get/get.dart';
import 'package:pour_nous/ui/home/controller/home_repository.dart';
import 'package:pour_nous/ui/home/controller/home_controller.dart';
import 'package:pour_nous/ui/home/data/home_api.dart';
import 'package:pour_nous/ui/home/data/home_repository_ipml.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeApi());
    Get.lazyPut<HomeRepository>(() => CentralCommandRepositoryImpl(Get.find()));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
