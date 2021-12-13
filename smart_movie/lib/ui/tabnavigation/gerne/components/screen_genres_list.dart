import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:smart_movie/data/service/data/up_comming/data_up_comming_list.dart';
import 'package:smart_movie/ui/detail/movie_detail_screen.dart';
import 'package:smart_movie/ui/tab/upcoming/conponents/up_comming_controller.dart';
import 'package:smart_movie/utils/common/SizeConfig.dart';
import 'package:smart_movie/utils/common/image.dart';
import 'package:smart_movie/utils/common/ui/list_view.dart';


class ScreenGenresList extends GetWidget<UpCommingListController> {
@override
final UpCommingListController controller = Get.put(UpCommingListController());

ScreenGenresList({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  SizeConfig().init(context);
  return Scaffold(
    body: Ink(
      color: Colors.white,
      child: GetBuilder<UpCommingListController>(
        builder: (_) => buildListView(_),
      ),
    ),
  );
}

Widget buildListView(UpCommingListController s) {
  var isLoadMore = s.isLoadingMore.value;
  int totalItem = s.movies.length;
  if (totalItem != 0) {
    return Column(
      children: [
        Expanded(
            child: RefreshIndicator(
              onRefresh: _refreshData,
              child: ListView.builder(
                itemCount: totalItem,
                itemBuilder: (BuildContext context, int index) {
                  return buildMovieCardView(s, index,context);
                },
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

// Widget buildListView1(UpCommingListController s) {
//   var isLoadMore = s.isLoadingMore.value;
//   int totalItem = s.movies.length;
//   if (totalItem != 0) {
//     return Column(
//       children: [
//         Expanded(
//             child: RefreshIndicator(
//               onRefresh: _refreshData,
//               child: IncrementallyLoadingListView(
//                 hasMore: () => s.hasMore.value,
//                 itemCount: () => totalItem,
//                 loadMore: () async {
//                   // can shorten to "loadMore: _loadMoreItems" but this syntax is used to demonstrate that
//                   // functions with parameters can also be invoked if needed
//                   _loadMore();
//                 },
//                 onLoadMore: () {},
//                 onLoadMoreFinished: () {},
//                 separatorBuilder: (_, __) => Divider(),
//                 loadMoreOffsetFromBottom: 2,
//                 itemBuilder: (context, index) {
//                   if ((isLoadMore == true) && index == totalItem - 1) {
//                     return Column(
//                       children: <Widget>[
//                         const Padding(
//                           padding: EdgeInsets.only(top: 10, bottom: 40),
//                           child: Center(
//                             child: CircularProgressIndicator(),
//                           ),
//                         ),
//                         buildMovieCardView(s, index),
//                       ],
//                     );
//                   }
//                   // return ItemCard(item: item);
//                   return buildMovieCardView(s, index);
//                 },
//               ),
//             )),
//         if (isLoadMore)
//           const Padding(
//             padding: EdgeInsets.only(top: 10, bottom: 40),
//             child: Center(
//               child: CircularProgressIndicator(),
//             ),
//           ),
//       ],
//     );
//   } else {
//     return const Center(
//       child: Text("Empty Data"),
//     );
//   }
// }

Widget buildMovieCardView(UpCommingListController s, int index,BuildContext context) {
  var result = s.movies[index];
  return GestureDetector(
    onTap:() => Navigator.push(context,
        MaterialPageRoute(builder: (context) => MovieDetailScreen(idMovie: s.movies[index].id,),)),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_radiusCardView),
        ),
        child: SizedBox(
          // width: 250,
          height: _heightCardView,
          child: Stack(
            children: [
              buildContainerPhotoBackground(result),
              buildContainer(result),
            ],
          ),
        ),
      ),
    ),
  );
}

Container buildContainer(Result result) {
  return Container(
    alignment: Alignment.bottomLeft,
    child: Container(
      child: buildContentView(result),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.5),
        borderRadius:
        BorderRadius.vertical(bottom: Radius.circular(_radiusCardView)),
      ),
    ),
  );
}

Widget buildContentView(Result result) {
  return SizedBox(
    width: double.infinity,
    height: _heightTitle,
    child: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.fromLTRB(9.0, 15.0, 9.0, 15.0),
          child: Text(
            "${result.title}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    ),
  );
}



Text buildTextSubTitle(String data) {
  return Text(data,
      style: const TextStyle(
          fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w300));
}

Widget buildContainerPhotoBackground(Result result) {
  return buildPosterPhoto("${result.backdrop_path}");
}

CachedNetworkImage buildPosterPhoto(String imageName) {
  return CachedNetworkImage(
    fit: BoxFit.cover,
    placeholder: (context, url) => const Center(
      child: CircularProgressIndicator(),
    ),
    imageUrl: imageUrlW500(imageName),
    imageBuilder: (context, imageProvider) => Container(
      width: double.maxFinite,
      height: _heightCardView,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(_radiusCardView),
          bottom: Radius.circular(_radiusCardView),
        ),
        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
      ),
    ),
  );
}

Future<void> _refreshData() {
  return controller.loadMovies();
}

void _loadMore() {
  controller.loadMore();
}
}

const _heightCardView = 250.0;

const _heightTitle = 50.0;
const _radiusCardView = 2.0;

