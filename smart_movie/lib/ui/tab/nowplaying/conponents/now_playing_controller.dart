import 'package:get/get.dart';
import 'package:smart_movie/data/service/data/now_playing/data_nowplaying_list.dart';
import 'package:smart_movie/ui/tab/nowplaying/conponents/repository/now_playing_repository.dart';




class NowPlayingListController extends GetxController {
  var movies = List<Result>.empty().obs;
  var isLoadingMore = false.obs;
  var curentPage = 1;
  var totalPage = 0;
  var hasMore = true.obs;

  loadMovies() async {
    var data = await getNowPlayingTemp(curentPage);
    totalPage = data.totalPages ?? 0;
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
      var data = await getNowPlaying(curentPage);
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
