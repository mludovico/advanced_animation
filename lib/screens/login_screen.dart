import 'package:advanced_animation/widgets/form_container.dart';
import 'package:advanced_animation/widgets/signup_button.dart';
import 'package:advanced_animation/widgets/stagger_animation.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin{

  AnimationController _animationController;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );
    _animationController.addStatusListener((status){
      if(status == AnimationStatus.completed)
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context)=>HomeScreen()
          )
        );
    });
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://images.pexels.com/photos/615344/julius-caesar-rome-roman-empire-615344.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"),
            fit: BoxFit.cover
          )
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: Icon(Icons.check, size: 200, color: Colors.black87)
                    ),
                    FormContainer(),
                    SignUpButton(),
                  ],
                ),
                StaggerAnimation(
                  controller: _animationController.view
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

