import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pour_nous/ui/home/controller/home_controller.dart';

class AccountPage extends GetView<HomeController> {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: _buildBody(context, size),

    );
  }



  _buildBody(BuildContext context, Size size) {
    return GetBuilder<HomeController>(
        id: "builderAccountPage",
        builder: (controller) {
          if (controller.isLoadingAccountData) {
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


          return Container(color: Colors.green,width: 40,height: 40,);
        });
  }



}