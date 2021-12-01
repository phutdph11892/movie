import 'package:flutter/material.dart';
import 'package:smart_movie/ui/toprated/components/body.dart';

class TopRatedScreen extends StatelessWidget {
  const TopRatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyTopRated(),
    );
  }
}
