import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const SearchBox({Key? key,this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(left: 40,right: 80),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
           border:Border.all(color: Colors.grey)
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border:InputBorder.none,
          icon:SvgPicture.asset("assets/icons/search.svg"),
          hintText:"Search",
            hintStyle: TextStyle(color: Colors.black,fontSize: 14)
        ),
      ),
    );
  }
}
