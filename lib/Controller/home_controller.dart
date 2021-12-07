import 'package:get/get.dart';
import 'package:get_x_demo/Model/home_model.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    apiCall();
    super.onInit();
  }

  static HomeController get to => Get.find();

  RxInt count = 0.obs;

  Rx<HomeModel> homeModel = HomeModel().obs;

  apiCall() {
    homeModel.value = HomeModel.fromJson({"success": 10});
  }
}
