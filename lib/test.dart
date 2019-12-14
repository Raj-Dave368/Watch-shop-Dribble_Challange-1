///omNS BaBO
///shiv BABO WE Love you and WE LOVE US
/// om namah shivay✊🏻omNS omNS BaBO

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';
import 'dart:math';

void main() => runApp(MaterialApp(home: omNS()));

class omNS extends StatefulWidget {
  @override
  _omNSState createState() => _omNSState();
}

class _omNSState extends State<omNS> with TickerProviderStateMixin {
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
  double AnimatedWidth = 68;
  Animation animation;
  Animation opacity;
  AnimationController opacitycontroller;
  AnimationController controller;
  ScrollController mainScreenScroller;
  double val;
  AnimationController scrollAnimation;
  AnimationController atscrollend;

  @override
  void initState() {
    opacitycontroller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 668))
          ..addListener(() {
            //TODO: just try to remove this addListener and see the result
            //TODO: we are not able to see 'omNS' just because when animation gets
            //TODO: completed than we are not calling setState but as we are triggering .fling() at that time
            //TODO: ,the value of opacityController will start to increase but not reflect on screen As we are not
            //TODO: redrawing it
            setState(() {});
          });
    opacity = Tween(begin: 0, end: 1).animate(
        CurvedAnimation(parent: opacitycontroller, curve: Curves.elasticOut));

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 968));
//    TODO: IDEA by my vallo wallo babo BholiyoBhandari BaBo
//    NOTE: TODO: add this in ppt if we write height then we got error because this initState will run first then we got context after build mehtod
//     TODO: and then height !  but we want to make animation value up to full height so solution is make this from range 0-1 and wherever we want
//     TODO: to access that height then use Media....height * animation.value ! simple

//    animation = Tween(begin: 36.0, end: height)
//        .animate(CurvedAnimation(parent: controller, curve: Curves.elasticOut));
    animation = Tween(begin: .0, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOutExpo));
    controller.addListener(() {
      animation.value > 0.7 ? opacitycontroller.forward() : null;
      animation.value == 0 ? opacitycontroller.value = 0 : null;
      setState(() {
        print("omNS");
      });
    });

    scrollAnimation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..addStatusListener((status) {
        setState(() {});
      });

    scrollAnimation.addListener(() {
      setState(() {});
    });

    atscrollend =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    atscrollend.addListener(() {
      mainScreenScroller
          .jumpTo(mainScreenScroller.offset + atscrollend.value * 16);
      setState(() {});
    });

    mainScreenScroller = ScrollController();

    mainScreenScroller.addListener(() {
      print("omNS");
      setState(() {});
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
              Container(
                width: width,
                height: height,
                child: ListView(controller: mainScreenScroller, children: [
                  GestureDetector(
                    onTap: () {
                      mainScreenScroller.jumpTo(0);
                    },
                    onVerticalDragUpdate: (_) {
                      print(
                          "omNS ${mainScreenScroller.offset - _.primaryDelta} ${_.primaryDelta}");
                      mainScreenScroller.jumpTo(mainScreenScroller.offset -
                          _.primaryDelta *
                              max(1, (mainScreenScroller.offset / 1000)));

                      scrollAnimation.value -= _.primaryDelta / 500;
                      // TODO: AMAZING USE OF  / 500
                    },
                    onVerticalDragEnd: (_) {
                      scrollAnimation.fling(velocity: -0.3);

                      if (_.velocity.pixelsPerSecond.dy > 0)
                        atscrollend.fling(
                            velocity: min(2, _.velocity.pixelsPerSecond.dy));
                      else
                        atscrollend.fling(
                            velocity: max(2, -_.velocity.pixelsPerSecond.dy));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: List.generate(
                              12,
                              (i) => Container(
                                color: Colors.blue,
                                margin: EdgeInsets.only(
                                  top: lerpDouble(
                                      7.3681, 106, scrollAnimation.value),
                                  bottom: 7.3681,
                                  left: 7.3681,
                                  right: 7.3681,
                                ),
                                width: width * 0.45,
                                height: 326,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 200,
                                      height: 200,
                                      child: Image.asset(
                                        "Assets/omNSwatch.png",
                                      ),
                                    ),
                                    Text(
                                      "omNS",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.blue,
                                margin: EdgeInsets.only(
                                  top: lerpDouble(7.3681, 100, 0),
                                  bottom: 7.3681,
                                  left: 7.3681,
                                  right: 7.3681,
                                ),
                                width: width * 0.45,
                                height: 326,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 200,
                                      height: 200,
                                      child: Image.asset(
                                        "Assets/omNSwatch.png",
                                      ),
                                    ),
                                    Text(
                                      "omNS",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                bottom: lerpDouble(height * .141, -36, animation.value),
                /*
                TODO: try to remove this ^^ and just put height*.141
                conclusion :- we want our circle, out of screen from bottom side
                so we can make it's POsitioned (this means MY BABO have give me another idea that
                Positioned Widget is use in both condition)  negative from the bottom
                so this means when animation.value(when animation is not started) at that time
                we want height* .141     but when we got out animation completed at that time
                we want -36(down out of screen) so we can use lerpDouble))

                TODO: make ppt on lerpDouble() + it's all example

                TODO: make ppt on how Positioned widget works i.e. as in CSS display:absolute

                TODO: OH my BABO WE Love you, They have give me a Amazing Fact to USE it in every app


                //TODO: make ppt on this that ^^^ simple meaning of this is
                //TODO: we want height*0.141 when animation.value is 0 (at starting value)
                //TODO: and we     want 0  when animation.value " reach it's maximum value "
                //TODO   important  ^^^^^  ^^^^       ^^^^^^^^^   ^^^^^^^^^^^^^^^^6


                  */
                child: Container(
                  //Below value is taken from many test cases and below alignment is most suitable
                  // but find some general value for this
                  alignment: Alignment(0, 0.9),
                  width: lerpDouble(
                      58, animation.value * height * 3, animation.value),
                  height: lerpDouble(
                      58, animation.value * height * 3, controller.value),
                  child: Opacity(
                    opacity: opacitycontroller != null
                        ? opacitycontroller.value
                        : 0.5,
                    child: Transform.scale(
                      scale: animation.value,
                      child: Container(
//                          color: Colors.green,
//                      padding: EdgeInsets.only(top: 100),
                        width: width,
                        height: height - 36,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 138,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(36.0),
                              child: Text(
                                "BABO",
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Collection",
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Look",
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Blog",
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Support",
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Contact",
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffCAACF4),
                  ),
                ),
              ),
              Positioned(
                bottom: height * 0.14,
                right: width * 0.3,
                left: width * 0.3,
                child: Transform.scale(
                  scale: controller.value,
                  child: Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: height * 0.153,
//                right: width * 0.3,
//                left: width * 0.455
                child: Row(
                  children: <Widget>[
                    Transform.scale(
                      scale: animation.value,
                      child: Padding(
                          padding: EdgeInsets.only(
                              right: lerpDouble(0, 68, animation.value)),
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                            size: 36,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        animation.isCompleted
                            ? controller.reverse()
                            : controller.forward();
                      },
                      child: AnimatedIcon(
                        //TODO: HOW to  use this make ppt on that when animation.value
                        //TODO: is 0.1 of total end value then icon will animate 0.1 unit of it;s full
                        icon: AnimatedIcons.menu_close,
                        progress: animation,
                        size: 36,
                        color: animation.value < 0.3
                            ? Color(0xffffffff)
                            : Color(0xffA47568),
                      ),
                    ),
                    Transform.scale(
                      scale: animation.value,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: lerpDouble(0, 68, animation.value)),
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          size: 36,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
