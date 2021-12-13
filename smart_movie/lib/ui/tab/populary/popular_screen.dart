import 'package:flutter/material.dart';
import 'package:smart_movie/ui/tab/populary/conponents/screen_popular_list.dart';


class PopularScreen extends StatefulWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  _PopularScreenState createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenPopularList()
    );
  }
}

