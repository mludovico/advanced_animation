import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "Na Udemy",
          image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cursofb-9a28c.appspot.com/o/marcelo.jpg?alt=media&token=f96682a1-6c40-4f05-b818-f086c49c3a9f"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Xamarin",
          subtitle: "Na Udemy",
          image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cursofb-9a28c.appspot.com/o/marcelo.jpg?alt=media&token=f96682a1-6c40-4f05-b818-f086c49c3a9f"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Xamarin",
          subtitle: "Na Udemy",
          image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cursofb-9a28c.appspot.com/o/marcelo.jpg?alt=media&token=f96682a1-6c40-4f05-b818-f086c49c3a9f"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Xamarin",
          subtitle: "Na Udemy",
          image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cursofb-9a28c.appspot.com/o/marcelo.jpg?alt=media&token=f96682a1-6c40-4f05-b818-f086c49c3a9f"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
