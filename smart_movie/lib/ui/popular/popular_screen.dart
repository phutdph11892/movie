import 'package:flutter/material.dart';
import 'package:smart_movie/ui/popular/components/body.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyPopular(),
    );
  }
}
