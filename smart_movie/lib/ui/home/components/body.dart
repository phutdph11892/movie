import 'package:flutter/material.dart';
import 'package:smart_movie/constants.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              CategoryItem(
                title: "Movies",
                isActive: true,
                press: () {},
              ),
              CategoryItem(
                title: "Popular",
                press: () {},
              ),
              CategoryItem(
                title: "Top Rated",
                press: () {},
              ),
              CategoryItem(
                title: "Up Comming",
                press: () {},
              ),
              CategoryItem(
                title: "Now Playing",
                press: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback? press;

  const CategoryItem({Key? key, required this.title,this.isActive = false, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(color: kTextColor,fontSize: 15),
            ),
            if(isActive)
            Container(
              height: 3,
              width: 92,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
