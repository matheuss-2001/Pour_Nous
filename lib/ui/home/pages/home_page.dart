import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pour_nous/app/componentes/product_item.dart';
import 'package:pour_nous/app/helpers/global_variables.dart';
import 'package:pour_nous/app/helpers/responsive_margin.dart';
import 'package:pour_nous/ui/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: _buildBody(context, size),
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

          return SingleChildScrollView(
            padding: EdgeInsets.only(left: 16, right: 16),
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: size.height,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    autoPlay: true,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                  ),
                  items: controller.listPhotosModelos.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                          child: Image.asset(
                            i,
                            fit: BoxFit.cover,
                            width: 600,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                OneSepators.big,
                Container(
                    margin: responsiveMargin(size),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'FRESH FRUITS',
                              style: OneStyles.subtitle.copyWith(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        OneSepators.big,
                        SizedBox(
                          height: 300,
                          child: GridView.builder(
                              primary: false,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 200,
                                      childAspectRatio: 0.7,
                                      crossAxisSpacing: kIsWeb ? 20 : 5,
                                      mainAxisSpacing: 20),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.productItensHome.length,
                              itemBuilder: (BuildContext context, index) {
                                ProductItem item =
                                    controller.productItensHome[index];
                                return ProductItem(
                                    listOfPhotos: item.listOfPhotos,
                                    productDescription: item.productDescription,
                                    productValue: item.productValue,
                                    onTapProduct: () {});
                              }),
                        ),
                      ],
                    )),
                OneSepators.medium,
              ],
            ),
          );
        });
  }
}
