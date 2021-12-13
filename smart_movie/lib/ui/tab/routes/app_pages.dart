import 'package:get/get.dart';
import 'package:smart_movie/ui/detail/movie_detail_controller.dart';
import 'package:smart_movie/ui/detail/screen_movie_detail.dart';
import 'package:smart_movie/ui/tab/populary/conponents/popular_binding.dart';
import 'package:smart_movie/ui/tab/populary/conponents/screen_popular_list.dart';
import 'package:smart_movie/ui/tab/toprated/conponents/screen_top_rated_list.dart';
import 'package:smart_movie/ui/tab/toprated/conponents/top_rated_binding.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INSTALL1 = Routes.POPULAR;
  static const INSTALL2 = Routes.TOPRATED;
  static final routes = [
    GetPage(
      name: _Paths.POPULAR,
      page: () => ScreenPopularList(),
      binding: PopularBinding(),
    ),
    GetPage(
      name: _Paths.TOPRATED,
      page: () => ScreenTopRatedList(),
      binding: TopRatedBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS,
      page: () => ScreenMovieDetail(),
      binding: MovieDetailBinding(),
    ),
  ];
}
