import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Container(
      alignment: Alignment.center, // can chinh theo chieu ngang va chieu doc
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.headline6,
          children: const [
            TextSpan(
              text: "Smart Movie",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
          onPressed: () {}, icon: SvgPicture.asset("assets/icons/menu.svg"))
    ],
  );
}
