
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pour_nous/ui/home/controller/home_controller.dart';


class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context, size),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Pour Nous',
        //style: TextStyle(color: OneColors.accentDark),
      ),
      leading: IconButton(
        icon: Icon(Icons.adaptive.arrow_back, color: Colors.black),
        onPressed: () {}
        ),
    );
  }

  _buildBody(BuildContext context, Size size) {
    return GetBuilder<HomeController>(
        id: "builderEventPage",
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


          return Container();
          /*

            ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(12),
              children: [
                OneSepators.small,
                Obx(() => GridView.count(
                  padding: responsiveMargin(size),
                  crossAxisCount: size.width < 700 ? 2 : 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 2,
                  shrinkWrap: true,
                  childAspectRatio: 16 / 9,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    controller.isAssistencia24HoursContracted.value
                        ? !controller.blockAssistencia24Hours.value
                        ? CustomCardButtonHome(
                      isContracted: controller
                          .isAssistencia24HoursContracted.value,
                      title: 'Assistência\n24 Horas',
                      subTitle: ' ',
                      image: OneAssets.assistenciaTwoFourImage,
                      onTap: () {
                        Get.toNamed(Routes.ASSISTENCE24HOUR);
                      },
                    )
                        : CustomCardButtonHome(
                      isContracted: controller
                          .isAssistencia24HoursContracted.value,
                      title: 'Assistência\n24 Horas',
                      subTitle: 'Evento Aberto',
                      image: OneAssets.assistenciaTwoFourImage,
                      onTap: () {
                        Get.toNamed(Routes.EVENTS, arguments: {
                          "listEventosFull":
                          controller.listaEventosFull
                        });
                      },
                    )
                        : CustomCardButtonHome(
                      isContracted: controller
                          .isAssistencia24HoursContracted.value,
                      title: 'Assistência\n24 Horas',
                      subTitle: ' ',
                      image: OneAssets.assistenciaTwoFourImage,
                      onTap: () {
                        Get.dialog(AlertNoCoverDialog(
                            centralText:
                            'Cobertura não contratada !'));
                      },
                    ),

                    controller.isVidrosContracted.value
                        ? !controller.blockVidros.value
                        ? CustomCardButtonHome(
                        isContracted:
                        controller.isVidrosContracted.value,
                        title: 'Assistência \na Vidros',
                        subTitle: ' ',
                        image: OneAssets.glassCar,
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType.glasses);

                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller.tipoEventoVidros);
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isVidrosContracted.value,
                        title: 'Assistência \na Vidros',
                        subTitle: "Evento Aberto",
                        image: OneAssets.glassCar,
                        onTap: () {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isVidrosContracted.value,
                        title: 'Assistência \na Vidros',
                        subTitle: ' ',
                        image: OneAssets.glassCar,
                        onTap: () {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),

                    controller.isIncendioContracted.value
                        ? !controller.blockIncendio.value
                        ? CustomCardButtonHome(
                        isContracted:
                        controller.isIncendioContracted.value,
                        title: 'Assistência \na Incêndio',
                        subTitle: ' ',
                        image: OneAssets.incendioImage,
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType.incendio);
                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller.tipoEventoIncendio);
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isIncendioContracted.value,
                        title: 'Assistência \na Incêndio',
                        subTitle: "Evento Aberto",
                        image: OneAssets.incendioImage,
                        onTap: () {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isIncendioContracted.value,
                        title: 'Assistência \na Incêndio',
                        subTitle: " ",
                        image: OneAssets.incendioImage,
                        onTap: () {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),

                    controller.isColisaoTerceirosContracted.value
                        ? !controller.blockColisaoTerceiros.value
                        ? CustomCardButtonHome(
                        subTitle: " ",
                        isContracted: controller
                            .isColisaoTerceirosContracted.value,
                        title: 'Colisão a\nTerceiros',
                        image: OneAssets.iconperson,
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType.eventoTerceiros);
                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller.tipoEventoTerceiro);
                        })
                        : CustomCardButtonHome(
                        isContracted: controller
                            .isColisaoTerceirosContracted.value,
                        title: 'Colisão a\nTerceiros',
                        subTitle: "Evento Aberto",
                        image: OneAssets.iconperson,
                        onTap: () {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted: controller
                            .isColisaoTerceirosContracted.value,
                        title: 'Colisão a\nTerceiros',
                        subTitle: " ",
                        image: OneAssets.iconperson,
                        onTap: () {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),

                    //////////////// colocar carro reserva quando for decidido.
/*
                  controller.isCarroReservaContracted.value
                      ? !controller.blockCarroReserva.value
                          ? CustomCardButtonHome(
                              subTitle: " ",
                              isContracted:
                                  controller.isCarroReservaContracted.value,
                              title: 'Carro\nReserva',
                              image: OneAssets.carroReservaImage,
                              onTap: () async {
                                /*
                                await controller
                                    .separeIdPlatesWithEventSelected(
                                        controller.tipoEventoCarroReserva);
                                controller.selectEventSinisterType(
                                    EventSinisterType.backupCar);

                                 */
                              })
                          : CustomCardButtonHome(
                              isContracted:
                                  controller.isCarroReservaContracted.value,
                              title: 'Carro\nReserva',
                              image: OneAssets.carroReservaImage,
                              subTitle: "Evento Aberto",
                              onTap: () {
                                /*
                                Get.toNamed(Routes.EVENTS, arguments: {
                                  "listEventosFull": controller.listaEventosFull
                                });

                                 */
                              })
                      : CustomCardButtonHome(
                          isContracted:
                              controller.isCarroReservaContracted.value,
                          title: 'Carro\nReserva',
                          image: OneAssets.carroReservaImage,
                          subTitle: " ",
                          onTap: () {
                            Get.dialog(const AlertNoCoverDialog());
                          }),

 */

                    ////////////////

                    controller.isFenomenosNaturaisContracted.value
                        ? !controller.blockFenomenosNaturais.value
                        ? CustomCardButtonHome(
                        subTitle: " ",
                        isContracted: controller
                            .isFenomenosNaturaisContracted.value,
                        title: 'Fenômenos\nNaturais',
                        image: OneAssets.inundacaoImage,
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType.naturalPhenomena);
                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller
                                  .tipoEventoFenomenoNatural);
                        })
                        : CustomCardButtonHome(
                        isContracted: controller
                            .isFenomenosNaturaisContracted.value,
                        title: 'Fenômenos\nNaturais',
                        image: OneAssets.inundacaoImage,
                        subTitle: "Evento Aberto",
                        onTap: () {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted: controller
                            .isFenomenosNaturaisContracted.value,
                        title: 'Fenômenos\nNaturais',
                        image: OneAssets.inundacaoImage,
                        subTitle: " ",
                        onTap: () {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),

                    ////////////////

                    controller.isPerdaTotalContracted.value
                        ? !controller.blockPerdaTotal.value
                        ? CustomCardButtonHome(
                        isContracted:
                        controller.isPerdaTotalContracted.value,
                        title: 'Colisão ou\nPerda Total',
                        image: OneAssets.check,
                        subTitle: " ",
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType.eventoColisao);
                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller
                                  .tipoEventoColisaoOuPerdaTotal);
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isPerdaTotalContracted.value,
                        title: 'Colisão ou\nPerda Total',
                        image: OneAssets.check,
                        subTitle: "Evento Aberto",
                        onTap: () async {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isPerdaTotalContracted.value,
                        title: 'Colisão ou\nPerda Total',
                        image: OneAssets.check,
                        subTitle: " ",
                        onTap: () async {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),

                    ////////////////

                    controller.isBuracosContracted.value
                        ? !controller.blockEventoBuracos.value
                        ? CustomCardButtonHome(
                        isContracted:
                        controller.isBuracosContracted.value,
                        title: 'Assistência \na Buracos',
                        image: OneAssets.assistanceplus,
                        subTitle: " ",
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType.eventoBuracos);
                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller.tipoEventoBuracos);
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isBuracosContracted.value,
                        title: 'Assistência \na Buracos',
                        image: OneAssets.assistanceplus,
                        subTitle: "Evento Aberto",
                        onTap: () async {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isBuracosContracted.value,
                        title: 'Assistência \na Buracos',
                        image: OneAssets.assistanceplus,
                        subTitle: " ",
                        onTap: () async {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),

                    ////////////////
                    controller.isRouboContracted.value
                        ? !controller.blockRoubo.value
                        ? CustomCardButtonHome(
                        isContracted:
                        controller.isRouboContracted.value,
                        title: "Assistência \na Roubo",
                        image: OneAssets.smallcarpink,
                        icon: const Icon(
                          Icons.car_crash_outlined,
                          size: kIsWeb ? 42 : 33,
                          color: Colors.pink,
                        ),
                        subTitle: " ",
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType.eventoRoubo);
                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller.tipoEventoRoubo);
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isRouboContracted.value,
                        title: "Assistência \na Roubo",
                        image: OneAssets.smallcarpink,
                        icon: const Icon(
                          Icons.car_crash_outlined,
                          size: kIsWeb ? 42 : 33,
                          color: Colors.pink,
                        ),
                        subTitle: "Evento Aberto",
                        onTap: () async {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isRouboContracted.value,
                        title: "Assistência \na Roubo",
                        image: OneAssets.smallcarpink,
                        icon: const Icon(
                          Icons.car_crash_outlined,
                          size: kIsWeb ? 42 : 33,
                          color: Colors.pink,
                        ),
                        subTitle: " ",
                        onTap: () async {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),
                    ////////////////

                    controller.isFurtoContracted.value
                        ? !controller.blockFurto.value
                        ? CustomCardButtonHome(
                        isContracted:
                        controller.isFurtoContracted.value,
                        title: "Assistência \na Furto",
                        image: OneAssets.furtoImage,
                        subTitle: " ",
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType.eventoFurto);
                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller.tipoEventoFurto);
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isFurtoContracted.value,
                        title: "Assistência \na Furto",
                        image: OneAssets.furtoImage,
                        subTitle: "Evento Aberto",
                        onTap: () async {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isFurtoContracted.value,
                        title: "Assistência \na Furto",
                        image: OneAssets.furtoImage,
                        subTitle: " ",
                        onTap: () async {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),
                    ////////////////

                    controller.isLatariaPinturaContracted.value
                        ? !controller.blockEventoLatariaPintura.value
                        ? CustomCardButtonHome(
                        isContracted: controller
                            .isLatariaPinturaContracted.value,
                        title: 'Assistência \nLataria e\nPintura',
                        image: OneAssets.addcar,
                        subTitle: " ",
                        onTap: () async {
                          controller.selectEventSinisterType(
                              EventSinisterType
                                  .eventoLatariaPintura);
                          await controller
                              .separeIdPlatesWithEventSelected(
                              controller
                                  .tipoEventoLatariaPintura);
                        })
                        : CustomCardButtonHome(
                        isContracted: controller
                            .isLatariaPinturaContracted.value,
                        title: 'Assistência \nLataria e\nPintura',
                        image: OneAssets.addcar,
                        subTitle: "Evento Aberto",
                        onTap: () async {
                          Get.toNamed(Routes.EVENTS, arguments: {
                            "listEventosFull":
                            controller.listaEventosFull
                          });
                        })
                        : CustomCardButtonHome(
                        isContracted:
                        controller.isLatariaPinturaContracted.value,
                        title: 'Assistência \nLataria e\nPintura',
                        image: OneAssets.addcar,
                        subTitle: " ",
                        onTap: () async {
                          Get.dialog(AlertNoCoverDialog(
                              centralText:
                              'Cobertura não contratada !'));
                        }),
                  ],
                )),
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 200,
                  margin: responsiveMargin(size),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: controller.existePendenciaNoAcompanhamento
                          ? Colors.yellow.shade700
                          : Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 0.0),
                        blurRadius: 15.0,
                        spreadRadius: 2.0,
                        color: Colors.black.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Get.toNamed(Routes.EVENTS, arguments: {
                        "listEventosFull": controller.listaEventosFull,
                      });
                    },
                    child: CustomBannerAuto(
                      isLoading: false,
                      isButton: true,
                      onPressed: () {
                        Get.toNamed(Routes.EVENTS, arguments: {
                          "listEventosFull": controller.listaEventosFull
                        });
                      },
                      chooseImage: OneAssets.plusorangebig,
                      firstTitle: "Acompanhar",
                      secondTitle: "Evento Aberto",
                      titleButton: 'Acompanhar Evento',
                      subTitle: controller.existePendenciaNoAcompanhamento
                          ? "Há Evento com Pendência"
                          : " ",
                      textColor: OneColors.darkOrange,
                      bottonColor: OneColors.darkOrange,
                    ),
                  ),
                ),
              ]);

           */
        });
  }
}
