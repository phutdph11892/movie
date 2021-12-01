import 'package:flutter/material.dart';
import 'package:smart_movie/ui/artist/artists.dart';
import 'package:smart_movie/ui/genres/genres_screen.dart';
import 'package:smart_movie/ui/movie/movie_screen.dart';
import 'package:smart_movie/ui/search/search_screen.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndexForBottomNavigationBar = 0;

  //1
  static const List<Widget> _listOfIconsForBottomNavigationBar = <Widget>[
    MovieScreen(),
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
            // this will be set when a new tab is tapped
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.directions_car), title: Text('Discover')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.directions_walk), title: Text('Search')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.directions_bike), title: Text('Genres')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.directions_walk), title: Text('Artists')),
            ],
            currentIndex: _selectedIndexForBottomNavigationBar,
          ),
        ));
  }
}