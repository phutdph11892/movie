import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_movie/ui/genres/components/body.dart';

class GenresScreen extends StatefulWidget {
  const GenresScreen({Key? key}) : super(key: key);

  @override
  _GenresScreenState createState() => _GenresScreenState();
}

class _GenresScreenState extends State<GenresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 40),
          child: Center(
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Genres",
                    style: TextStyle(color: Colors.black,fontSize: 20)
                  )
                ]
              ),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            
          }, icon: SvgPicture.asset("assets/icons/search.svg"))
        ],
      ),
      body: const Center(
        child: BodyGenres(),
      ),
    );
  }
}
