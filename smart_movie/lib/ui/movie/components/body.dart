import 'package:flutter/material.dart';

class BodyMovie extends StatelessWidget {
  const BodyMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
           children: <Widget>[
                  Container(
                    child: Text("Movie"),
                  ),
           ],
    );
  }
}
