import 'package:get/get.dart';
import 'package:pour_nous/ui/home/controller/central_command_repository.dart';
import 'package:pour_nous/ui/home/controller/home_controller.dart';
import 'package:pour_nous/ui/home/data/central_command_api.dart';
import 'package:pour_nous/ui/home/data/central_command_repository_ipml.dart';

class CentralCommandBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CentralCommandApi());
    Get.lazyPut<CentralCommandRepository>(
        () => CentralCommandRepositoryImpl(Get.find()));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
