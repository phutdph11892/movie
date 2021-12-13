import 'package:flutter/material.dart';
import 'package:smart_movie/ui/tab/toprated/conponents/screen_top_rated_list.dart';




class TopRatedScreen extends StatefulWidget {
  const TopRatedScreen({Key? key}) : super(key: key);

  @override
  _TopRatedScreenState createState() => _TopRatedScreenState();
}

class _TopRatedScreenState extends State<TopRatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenTopRatedList()
    );
  }
}
