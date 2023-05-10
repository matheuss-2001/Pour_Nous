import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pour_nous/ui/home/controller/home_controller.dart';

class ProductPage extends GetView<HomeController> {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: _buildBody(context, size),

    );
  }



  _buildBody(BuildContext context, Size size) {
    return GetBuilder<HomeController>(
        id: "builderProductPage",
        builder: (controller) {
          if (controller.isLoadingProductData) {
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


          return Container(color: Colors.red,width: 40,height: 40,);
        });
  }



}