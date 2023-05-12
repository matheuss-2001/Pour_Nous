import 'package:get/get.dart';
import 'package:pour_nous/ui/produtos/controller/produtos_controller.dart';
import 'package:pour_nous/ui/produtos/controller/produtos_repository.dart';
import 'package:pour_nous/ui/produtos/data/produtos_api.dart';
import 'package:pour_nous/ui/produtos/data/produtos_repository_ipml.dart';


class ProdutosBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProdutosApi());
    Get.lazyPut<ProdutosRepository>(() =>  ProdutosRepositoryImpl(Get.find()));
    Get.lazyPut<ProdutosController>(() =>ProdutosController(Get.find()));
  }
}
