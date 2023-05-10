import 'package:get/get_connect/connect.dart';



class CentralCommandApi extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    timeout = const Duration(seconds: 40);
    httpClient.timeout = const Duration(seconds: 40);
  }



}
