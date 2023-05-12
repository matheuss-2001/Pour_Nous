import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pour_nous/app/helpers/responsive_margin.dart';
import 'package:pour_nous/ui/home/controller/home_controller.dart';
import 'package:pour_nous/ui/home/pages/account_page.dart';
import 'package:pour_nous/ui/home/pages/home_page.dart';
import 'package:pour_nous/ui/produtos/pages/product_page.dart';

class CentralCommandPage extends GetView<HomeController> {
  const CentralCommandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context, size),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildAppBar() {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            icon: const Icon(
              Icons.shopping_cart_checkout_outlined,
              color: Colors.black87,
              size: 25,
            ),
            onPressed: () {
              //controller.launchWhatsapp('Olá,  preciso de suporte');
            },
            tooltip: 'Carrinho',
          ),
        ),
      ],
      leadingWidth: 220,
      backgroundColor: Colors.white,
      title: const Text(
        '',
        //style: TextStyle(color: OneColors.accentDark),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Image.asset(
          "assets/logo/logo_pourNous.png",
        ),
      ),
    );
  }

  _buildBody(BuildContext context, Size size) {
    return GetBuilder<HomeController>(
        id: "builderHomePage",
        builder: (controller) {
          if (controller.isLoadingHomeData) {
            return Container();
            //shimmer
            /*
              Shimmer.fromColors(
              period: const Duration(milliseconds: 1200),
              baseColor: Colors.grey.withOpacity(0.5),
              highlightColor: Colors.black.withOpacity(0.5),
              child: const ShimmerChooseItem(
                  typeOfLoagings: TypeOfLoaging.eventSinisterShimmer),
            );

               */
          }

          return Container(
            //margin: responsiveMargin(size),
            child: PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (idx) {
                controller.pageIdx = idx;
              },
              children: [ProductPage(), HomePage(), AccountPage()],
            ),
          );
        });
  }

  _buildBottomNavigationBar() {
    return GetBuilder<HomeController>(
        id: "builderHomePage",
        builder: (controller) {
          if (controller.isLoadingHomeData) {
            return Container();
            //shimmer
            /*
              Shimmer.fromColors(
              period: const Duration(milliseconds: 1200),
              baseColor: Colors.grey.withOpacity(0.5),
              highlightColor: Colors.black.withOpacity(0.5),
              child: const ShimmerChooseItem(
                  typeOfLoagings: TypeOfLoaging.eventSinisterShimmer),
            );

               */
          }

          return BottomNavigationBar(
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.grey,
              currentIndex: controller.pageIdx,
              onTap: (index) {
                switch (index) {
                  case 0:
                    controller.pageIdx = 1;
                    controller.pageController.jumpToPage(0);
                    controller.update(["builderHomePage"]);
                    return;
                  case 1:
                    controller.pageIdx = 2;
                    controller.pageController.jumpToPage(1);
                    controller.update(["builderHomePage"]);
                    return;
                  case 2:
                    controller.pageIdx = 3;
                    controller.pageController.jumpToPage(2);
                    controller.update(["builderHomePage"]);
                    return;
                }
              },
              items: const [
                BottomNavigationBarItem(
                    label: "Produtos", icon: Icon(Icons.label_outline)),
                BottomNavigationBarItem(
                    label: "Home", icon: Icon(Icons.home_outlined)),
                BottomNavigationBarItem(
                    label: "Conta", icon: Icon(Icons.person_2_outlined))
              ]);
        });
  }
}
