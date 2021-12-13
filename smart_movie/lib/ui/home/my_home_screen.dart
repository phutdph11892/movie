import 'package:flutter/material.dart';
import 'package:smart_movie/ui/tabnavigation/artist/artists.dart';
import 'package:smart_movie/ui/tabnavigation/gerne/genres_screen.dart';
import 'package:smart_movie/ui/tabnavigation/search/search_screen.dart';

import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndexForBottomNavigationBar = 0;
  static const List<Widget> _listOfIconsForBottomNavigationBar = <Widget>[
    HomeScreen(),
    SearchScreen(),
    GenresScreen(),
    ArtistsScreen(),
  ];


  void _onItemTappedForBottomNavigationBar(int index) {
    setState(() {
      _selectedIndexForBottomNavigationBar = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    //6
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          //7
          body: Center(
              child: _listOfIconsForBottomNavigationBar.elementAt(_selectedIndexForBottomNavigationBar)
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTappedForBottomNavigationBar,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_sharp), title: Text('Discover')),
              BottomNavigationBarItem(
                    icon: Icon(Icons.search_sharp), title: Text('Search')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.masks_sharp), title: Text('Genres')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded), title: Text('Artists')),
            ],
            currentIndex: _selectedIndexForBottomNavigationBar,
          ),
        ));
  }
}