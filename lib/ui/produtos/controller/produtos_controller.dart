import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pour_nous/ui/produtos/controller/produtos_repository.dart';


class ProdutosController extends GetxController {


  final  ProdutosRepository  produtosRepository;

  ProdutosController(this.produtosRepository);




  //centralCommand
  PageController pageController = PageController();
  int pageIdx = 0;

  //home
  bool isLoadingHomeData = false;

  //product
  bool isLoadingProductData = false;



  //account
 bool  isLoadingAccountData = false;
  @override
  void onInit() {
    super.onInit();
    print("Home Inicalitez");
  }

  @override
  void onReady() {
    super.onReady();

    _initServices();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> _initServices() async {
    //await PushNotification().startService();

  }

  Future<void> launchWhatsapp(String text) async {
    //final urlValue = Uri.parse("https://wa.me/+551152424499/?text=$text");

    //  await launchUrl(urlValue, mode: LaunchMode.externalApplication);
  }
}
