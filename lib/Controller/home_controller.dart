import 'package:get/get.dart';
import 'package:get_x_demo/Model/home_model.dart';
import 'package:get_x_demo/main.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    apiCall();
    super.onInit();
  }

  static HomeController get to => Get.find();

  RxInt count = 0.obs;
  RxString nameFromStorage = "".obs;

  Rx<HomeModel> homeModel = HomeModel().obs;

  apiCall() {
    homeModel.value = HomeModel.fromJson({"success": 10});
  }

//For Local Storage
  setDataInLocal() {
    //storage is Object from Main.dart File
    storage.write("name", "smit");
  }

  getDataInLocal() {
    //storage is Object from Main.dart File
    nameFromStorage.value = storage.read("name");
  }
}
