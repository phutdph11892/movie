import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:smart_movie/data/service/data/cast/data_cast.dart';
import 'package:smart_movie/data/service/data/movie_detail/data_movie_detail.dart';
import 'package:smart_movie/ui/tab/populary/conponents/repository/popular_repository.dart';
import 'package:smart_movie/utils/common/logger.dart';

class MovieDetailController extends GetxController
    with SingleGetTickerProviderMixin {
  late dynamic argumentData = Get.arguments;
  final duration = const Duration(milliseconds: 800);
  late AnimationController _animationController;
  late Animation<double> animationLogo;
  late Animation<double> animationTextFieldUser;
  var movie = MovieDetail().obs;
  var credit = CreditResult().obs;

  loadMovies(int idMovie) async {
    var data = await getMovie(idMovie);
    logger.i("#loadMovies() data ${data.toJson()}");
    movie(data);
  }

  loadCredit(int idMovie) async {
    var data = await getCredit(idMovie);
    logger.i("#loadMovies() data ${data.toJson()}");
    credit(data);
  }

  @override
  void onInit() {
    logger.i("MovieDetailController  onInit $argumentData");
    _animationController = AnimationController(duration: duration, vsync: this);
    animationLogo = Tween<double>(begin: 0, end: 3500)
        .animate(_animationController)
      ..addListener(() => update());
    animationTextFieldUser = Tween<double>(begin: Get.width, end: 0)
        .animate(_animationController)
      ..addListener(() => update());
    _animationController.forward();
    super.onInit();
  }

  @override
  void onClose() {
    _animationController.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}

class   MovieDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MovieDetailController(), tag: "MovieDetailController");
  }
}
