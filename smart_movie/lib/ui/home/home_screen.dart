import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_movie/ui/artist/artists.dart';
import 'package:smart_movie/ui/genres/genres_screen.dart';
import 'package:smart_movie/ui/movie/movie_screen.dart';
import 'package:smart_movie/ui/nowplaying/now_playing_screen.dart';
import 'package:smart_movie/ui/popular/popular_screen.dart';
import 'package:smart_movie/ui/search/search_screen.dart';
import 'package:smart_movie/ui/toprated/top_rated_screen.dart';
import 'package:smart_movie/ui/upcoming/up_comming_screen.dart';


import 'components/body.dart';
import 'components/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline6,
                  children: const [
                    TextSpan(
                        text: "Smart Movie",
                        style: TextStyle(color: Colors.black))
                  ]),
            ),
          ),
           actions: [
             IconButton(onPressed: () {
             }, icon: SvgPicture.asset("assets/icons/menu.svg"))
           ],
          bottom: const TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15),
            labelColor: Colors.black,
            indicatorColor: Colors.teal,
            indicatorSize: TabBarIndicatorSize.tab,
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
          ),
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
       // bottomNavigationBar: const NavigationBar(),
      ),
    );
  }
}


// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Center(
//       child: MovieScreen(),
//     ),
//     Center(
//       child: SearchScreen(),
//     ),
//     Center(
//       child: GenresScreen(),
//     ),
//     Center(
//       child: ArtistsScreen(),
//     ),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//         bottomNavigationBar:
//         BottomNavigationBar(
//           backgroundColor: Colors.black,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Discover',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.masks_sharp),
//               label: 'Genres',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle_rounded ),
//               label: 'Artists',
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor:const Color(0xFF0898A3),
//           unselectedItemColor: const Color(0xFF6A727D),
//           onTap: _onItemTapped,
//         ),
//
//     );
//   }
// }

