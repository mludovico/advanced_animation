import 'package:flutter/material.dart';

import 'category_view.dart';

class HomeTop extends StatelessWidget {

  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    
    final screenSize = MediaQuery.of(context).size;
    
    return Container(
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://images.pexels.com/photos/1797161/pexels-photo-1797161.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",),
          fit: BoxFit.cover
        )
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Bem vindo, Marcelo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cursofb-9a28c.appspot.com/o/marcelo.jpg?alt=media&token=f96682a1-6c40-4f05-b818-f086c49c3a9f"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                width: containerGrow.value * 35,
                height: containerGrow.value * 35,
                margin: EdgeInsets.only(left: 80),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: containerGrow.value * 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 194, 1.0)
                ),
              ),
            ),
            CategoryView(),
          ],
        )
      ),
    );
  }
}
