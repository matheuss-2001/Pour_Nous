import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  HomeController({
    required this.homeRepository,
  });

  final HomeController homeRepository;

  bool isLoadingHomeData = false;

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
