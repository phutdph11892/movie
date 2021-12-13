import 'package:flutter/material.dart';

import 'conponents/screen_up_comming_list.dart';

class UpComingScreen extends StatefulWidget {
  const UpComingScreen({Key? key}) : super(key: key);

  @override
  _UpComingScreenState createState() => _UpComingScreenState();
}

class _UpComingScreenState extends State<UpComingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenUpCommingList(),
    );
  }
}

