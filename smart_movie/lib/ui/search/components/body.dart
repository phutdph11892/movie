import 'package:flutter/material.dart';
import 'package:smart_movie/ui/search/search_box.dart';

class BodySearch extends StatelessWidget {
  const BodySearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          SearchBox(onChanged: (value){},)
      ],
    );
  }
}
