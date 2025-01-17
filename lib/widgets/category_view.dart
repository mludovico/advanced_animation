import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  final List<String> categories = [
    "TRABALHO",
    "ESTUDO",
    "CASA"
  ];

  int _category = 0;

  void selectForward(){
    setState(() {
      _category++;
    });
    print("Category = $_category");
  }

  void selectBackward(){
    setState(() {
      _category--;
    });
    print("Category = $_category");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          disabledColor: Colors.white30,
          onPressed: _category > 0? selectBackward : null,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )
        ),
        Text(
          categories[_category],
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w300,
            color: Colors.white
          ),
        ),
        IconButton(
          disabledColor: Colors.white30,
          onPressed: _category < categories.length - 1? selectForward : null,
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}


