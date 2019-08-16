import 'package:flutter/material.dart';

class ListData extends StatelessWidget {

  final String title;
  final String subtitle;
  final ImageProvider image;
  final EdgeInsets margin;

  ListData({this.title, this.image, this.margin, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey[100], width: 1.0),
          bottom: BorderSide(color: Colors.grey[100], width: 1.0),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image, fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
