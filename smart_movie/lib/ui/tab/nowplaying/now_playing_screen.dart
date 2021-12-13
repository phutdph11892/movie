import 'package:flutter/material.dart';

import 'conponents/screen_now_playing_list.dart';




class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({Key? key}) : super(key: key);

  @override
  _NowPlayingScreenState createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenNowPlayingList(),
    );
  }
}

