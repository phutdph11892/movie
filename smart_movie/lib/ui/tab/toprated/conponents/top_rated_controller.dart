import 'package:get/get.dart';
import 'package:smart_movie/data/service/data/top_rated/data_top_rated_list.dart';
import 'package:smart_movie/ui/tab/toprated/conponents/repository/top_rated_repository.dart';



class TopRatedListController extends GetxController {
  var movies = List<Result>.empty().obs;
  var isLoadingMore = false.obs;
  var curentPage = 1;
  var totalPage = 0;
  var hasMore = true.obs;

  loadMovies() async {
    var data = await getTopRated(curentPage);
    totalPage = data.total_pages ?? 0;
    if (data.results != null) {
      movies.addAll(data.results!);
      update();
    } else {
      movies.clear();
    }
  }

  loadMore() async {
    isLoadingMore(true);
    if (curentPage < totalPage) {
      curentPage++;
      hasMore(true);
      var data = await getTopRated(curentPage);
      if (data.results != null) {
        movies.addAll(data.results!);
        update();
        isLoadingMore(false);
      } else {
        movies.clear();
      }
    } else {
      hasMore(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadMovies();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
