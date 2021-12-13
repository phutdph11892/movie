import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_movie/ui/tab/movie/movie_screen.dart';
import 'package:smart_movie/ui/tab/nowplaying/now_playing_screen.dart';
import 'package:smart_movie/ui/tab/populary/popular_screen.dart';
import 'package:smart_movie/ui/tab/toprated/top_rated_screen.dart';
import 'package:smart_movie/ui/tab/upcoming/up_comming_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    const tabBar = TabBar(
      isScrollable: true,
      labelStyle:TextStyle(fontSize: 15),
      indicatorColor: Colors.teal,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Colors.blue,
      tabs: <Widget>[
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
            child: MovieScreen(),
          ),
          Center(
            child: PopularScreen(),
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


