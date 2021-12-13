import 'package:flutter/material.dart';
import 'package:smart_movie/ui/tab/populary/conponents/screen_popular_list.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenPopularList(),
    );
  }
}
