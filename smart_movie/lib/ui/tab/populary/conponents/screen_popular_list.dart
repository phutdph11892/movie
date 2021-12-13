
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:smart_movie/ui/detail/movie_detail_screen.dart';
import 'package:smart_movie/ui/tab/populary/conponents/popular_controller.dart';
import 'package:smart_movie/utils/common/SizeConfig.dart';


import 'item_popular.dart';





class ScreenPopularList extends GetWidget<PopularListController> {
  @override
  final PopularListController controller = Get.put(PopularListController());

  ScreenPopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Ink(
        color: Colors.grey,
        child: GetBuilder<PopularListController>(
          builder: (_) => buildListView(_),
        ),
      ),
    );
  }

  Widget buildListView(PopularListController s) {
    var isLoadMore = s.isLoadingMore.value;
    int totalItem = s.movies.length;
    if (totalItem != 0) {
      return Column(
        children: [
          Expanded(
              child: RefreshIndicator(
            onRefresh: _refreshData,
            child:
            GridView.builder(
              itemCount: totalItem,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20, // chieu doc
                crossAxisSpacing: 20, //chieu ngang
                childAspectRatio: 0.70,
              ),
              itemBuilder: (context, index) => ItemCard(
                result: s.movies[index],
                press:() => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MovieDetailScreen(idMovie: s.movies[index].id,),)),
              ),
            ),
          )
          ),
          if (isLoadMore)
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 40),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      );
    } else {
      return const Center(
        child: Text("Empty Data"),
      );
    }
  }
  Future<void> _refreshData() {
    return controller.loadMovies();
  }

  void _loadMore() {
    controller.loadMore();
  }
}


