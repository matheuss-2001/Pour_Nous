import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pour_nous/app/componentes/product_item.dart';
import 'package:pour_nous/ui/home/controller/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepository;

  HomeController(this.homeRepository);

  //centralCommand
  PageController pageController = PageController();
  int pageIdx = 0;

  //home
  bool isLoadingHomeData = false;
  List<ProductItem> productItensHome = <ProductItem>[];

  List<String> listPhotosModelos = <String>[];

  //product
  bool isLoadingProductData = false;

  //account
  bool isLoadingAccountData = false;
  @override
  void onInit() {
    super.onInit();
    listPhotosModelos.add("assets/images/modelo_um.jpg");
    listPhotosModelos.add("assets/images/modelo_dois.jpeg");
    listPhotosModelos.add("assets/images/modelo_tres.jpeg");

    productItensHome.add(
      ProductItem(
          listOfPhotos: const [
            "assets/images/mango_front.jpeg",
            "assets/images/mango_back.jpeg"
          ],
          productDescription: "BLUE MANGO",
          productValue: "R\$ 189,00",
          onTapProduct: () {}),
    );
    productItensHome.add(
      ProductItem(
          listOfPhotos: const [
            "assets/images/lichia_front.jpeg",
            "assets/images/lichia_back.jpeg"
          ],
          productDescription: "LICHIA",
          productValue: "R\$ 189,00",
          onTapProduct: () {}),
    );
    productItensHome.add(
      ProductItem(
          listOfPhotos: const [
            "assets/images/green_mango_front.jpeg",
            "assets/images/green_mango_back.jpeg"
          ],
          productDescription: "GREEN MANGO",
          productValue: "R\$ 189,00",
          onTapProduct: () {}),
    );
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
