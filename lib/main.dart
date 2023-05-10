import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:pour_nous/app/routes/app_pages.dart';
import 'package:pour_nous/app/routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Pour__Nous',
        defaultTransition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 450),
        debugShowCheckedModeBanner: false,
        getPages: AppPages.pages,
        initialRoute: Routes.CENTRALCOMMAND,

      );

  }
}
