import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_movie/ui/discover/discover_screen.dart';
import 'package:smart_movie/ui/nowplaying/now_playing_screen.dart';
import 'package:smart_movie/ui/popular/popular_screen.dart';
import 'package:smart_movie/ui/toprated/top_rated_screen.dart';
import 'package:smart_movie/ui/upcoming/up_comming_screen.dart';


class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  int _selectedIndexForBottomNavigationBar = 0;
  int _selectedIndexForTabBar = 0;


  void _onItemTappedForTabBar(int index) {
    setState(() {
      _selectedIndexForTabBar = index + 1;
      _selectedIndexForBottomNavigationBar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    final tabBar = TabBar(
      isScrollable: true,
      labelStyle:const TextStyle(fontSize: 15),
      indicatorColor: Colors.teal,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Colors.blue,
      onTap: _onItemTappedForTabBar,
      tabs: const <Widget>[
        Tab(
          text: "Movies",
        ),
        Tab(
          text: "Popular",
        ),
        Tab(
          text: "Top Rated",
        ),
        Tab(
          text: "Up Coming",
        ),
        Tab(
          text: "Now Playing",
        ),
      ],
    );

    return Scaffold(
         appBar: AppBar(
           bottom: tabBar,
           backgroundColor: Colors.white,
           title: Container(
             margin: const EdgeInsets.only(left: 40),
             child: Center(
               child: RichText(
                 text: const TextSpan(
                   children: [
                     TextSpan(
                       text: "Smart Movie",
                       style: TextStyle(color: Colors.black,fontSize: 20)
                     )
                   ],
                 ),
               ),
             ),
           ),
           actions: [
             IconButton(
               onPressed: () {
               },
               icon: SvgPicture.asset("assets/icons/menu.svg"),
             )
           ],
         ),
      body: const TabBarView(
        children: <Widget>[
          Center(
            child: DiscoverScreen(),
          ),
          Center(
            child:  PopularScreen(),
          ),
          Center(
            child: TopRatedScreen(),
          ),
          Center(
            child: UpComingScreen(),
          ),
          Center(
            child: NowPlayingScreen(),
          ),
        ],
      ),

    );
  }
}

