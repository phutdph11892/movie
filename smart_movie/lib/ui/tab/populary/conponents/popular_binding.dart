import 'package:get/get.dart';
import 'package:smart_movie/ui/tab/populary/conponents/popular_controller.dart';


class PopularBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PopularListController>(
          () => PopularListController(),
    );
  }
}