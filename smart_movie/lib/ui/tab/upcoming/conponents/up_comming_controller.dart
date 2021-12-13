import 'package:get/get.dart';
import 'package:smart_movie/data/service/data/up_comming/data_up_comming_list.dart';
import 'package:smart_movie/ui/tab/upcoming/conponents/repository/up_comming_repository.dart';



class UpCommingListController extends GetxController {
  var movies = List<Result>.empty().obs;
  var isLoadingMore = false.obs;
  var curentPage = 1;
  var totalPage = 0;
  var hasMore = true.obs;

  loadMovies() async {
    var data = await getUpCommingTemp(curentPage);
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
      var data = await getUpComming(curentPage);
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
