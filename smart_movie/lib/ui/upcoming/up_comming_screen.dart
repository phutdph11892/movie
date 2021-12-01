import 'package:flutter/material.dart';
import 'package:smart_movie/ui/upcoming/components/body.dart';

class UpComingScreen extends StatelessWidget {
  const UpComingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyUpComing(),
    );
  }
}
