import 'package:get/get.dart';
import 'package:smart_movie/ui/tab/toprated/conponents/top_rated_controller.dart';


class TopRatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopRatedListController>(
          () => TopRatedListController(),
    );
  }
}