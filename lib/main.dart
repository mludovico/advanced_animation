import 'package:advanced_animation/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animation Intro",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.fastLinearToSlowEaseIn
    );
    animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        controller.reverse();
      }else if(status == AnimationStatus.dismissed){
        controller.forward();
      }
    });
    controller.forward();
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GrowTransition(
      child: LogoWidget(),
      animation: animation,
    );
  }
}

class AnimatedLogo extends AnimatedWidget{

  AnimatedLogo(Animation<double> animation) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: Container(
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }

}

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(),
    );
  }
}

class GrowTransition extends StatelessWidget {

  final Widget child;
  final Animation<double> animation;
  final sizeTeen = Tween<double>(
    begin: 0,
    end: 300
  );
  final opacityTween = Tween<double>(
    begin: 0.1,
    end: 1
  );
  GrowTransition({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child){
          return Opacity(
            opacity: opacityTween.evaluate(animation).clamp(0.0, 1.0),
            child: Container(
              height: sizeTeen.evaluate(animation).abs(),
              width: sizeTeen.evaluate(animation).abs(),
              child: child,
            )
          );
        },
        child: child,
      ),
    );
  }
}
