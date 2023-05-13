import 'package:get/get.dart';
import 'package:pour_nous/ui/conta/controller/conta_controller.dart';
import 'package:pour_nous/ui/conta/controller/conta_repository.dart';
import 'package:pour_nous/ui/conta/data/conta_api.dart';
import 'package:pour_nous/ui/conta/data/conta_repository_ipml.dart';

class ContaBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ContaApi());
    Get.lazyPut<ContaRepository>(() => ContaRepositoryImpl(Get.find()));
    Get.lazyPut<ContaController>(() =>ContaController(Get.find()));
  }
}
