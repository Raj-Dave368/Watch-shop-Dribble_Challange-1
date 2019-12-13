///omNS
///shiv
/// om namah shivay✊🏻omNS omNS BaBO

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MaterialApp(home: omNS()));

class omNS extends StatefulWidget {
  @override
  _omNSState createState() => _omNSState();
}

class _omNSState extends State<omNS> with SingleTickerProviderStateMixin {
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
  double AnimatedWidth = 68;
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1368));
//    TODO: IDEA by my vallo wallo babo BholiyoBhandari BaBo
//    NOTE: TODO: add this in ppt if we write height then we got error because this initState will run first then we got context after build mehtod
//     TODO: and then height !  but we want to make animation value up to full height so solution is make this from range 0-1 and wherever we want
//     TODO: to access that height then use Media....height * animation.value ! simple

//    animation = Tween(begin: 36.0, end: height)
//        .animate(CurvedAnimation(parent: controller, curve: Curves.elasticOut));
    animation = Tween(begin: .0, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOutExpo));
    controller.addListener(() {
      setState(() {
        print("omNS");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // TODO: make ppt and try to remove this below container
        child: Container(
          color: Colors.pink,
          width: width,
          height: height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("lib/BaBO.png"),
              Positioned(
                bottom: 2,
                child: Container(
                  width: animation.value * height,
                  height: animation.value * height,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print("omNS");
                      },
                      child: AnimatedIcon(
                        //TODO: HOW to  use this
                        icon: AnimatedIcons.menu_close,
                        progress: animation,
                        size: lerpDouble(0, 36, animation.value),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffA47568),
                  ),
                ),
              ),
              Positioned(
                bottom: height * 0.2,
                right: width * 0.3,
                left: width * 0.3,
                child: RaisedButton(
                  child: Text("BaBO"),
                  onPressed: () {
//                    AnimatedWidth = AnimatedWidth != 36 ? 36 : height * 0.7;
//                    setState(() {});
                    animation.isCompleted
                        ? controller.reverse()
                        : controller.forward();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
