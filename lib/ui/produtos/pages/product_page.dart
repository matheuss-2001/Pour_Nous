import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pour_nous/app/helpers/global_variables.dart';
import 'package:pour_nous/ui/home/controller/home_controller.dart';
import 'package:pour_nous/ui/produtos/controller/produtos_controller.dart';

class ProductPage extends GetView<ProdutosController> {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return GetBuilder<HomeController>(
        id: "builderProductPage",
        builder: (controller) {
          if (controller.isLoadingProductData) {
            return Container();
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

          return ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: [
              OneSepators.medium,
              _search(context),
            ],
          );
        });
  }
}

Widget _search(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffE1E2E4).withAlpha(100),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Pesquisar",
                  hintStyle: TextStyle(fontSize: 12),
                  contentPadding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
                  prefixIcon: Icon(Icons.search, color: Colors.black54)),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(13)),
                color: const Color(0xffE1E2E4).withAlpha(100),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xfff8f8f8),
                      blurRadius: 10,
                      spreadRadius: 15)
                ]),
            child: const Icon(Icons.filter_list, color: Colors.black54)),
      ],
    ),
  );
}
