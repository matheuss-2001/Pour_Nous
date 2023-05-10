import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pour_nous/ui/home/controller/central_command_repository.dart';

class HomeController extends GetxController {


  final CentralCommandRepository  homeRepository;

  HomeController(this.homeRepository);




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
