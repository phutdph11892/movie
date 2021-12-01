import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_movie/ui/search/components/body.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          margin:const EdgeInsets.only(left: 40),
          child: Center(
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Search",
                    style: TextStyle(fontSize: 20,color: Colors.black)
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
      body:BodySearch(),
    );
  }
}
