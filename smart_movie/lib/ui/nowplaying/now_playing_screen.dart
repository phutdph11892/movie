import 'package:flutter/material.dart';
import 'package:smart_movie/ui/nowplaying/components/body.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: BodyNowPlaying(),
    );
  }
}
