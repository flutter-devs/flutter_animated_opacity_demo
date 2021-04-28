import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  @override
  OpacityDemoState createState() => OpacityDemoState();
}

class OpacityDemoState extends State<OpacityDemo> {

  var _opacity = 0.0;
  var _width = 230.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        title: Text("Flutter AnimatedOpacity Demo"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _opacity = _opacity == 0.0 ? 1 : 0.0;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height *0.08,
            width: _width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.cyan[400],
            ),
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceIn,
              opacity: _opacity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/devs.jpg",
                    scale: 10,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:30.0),
                    child: Text(
                      'Flutter Devs',
                      style: TextStyle(color: Colors.white,
                          fontSize: 20.0)
                      ,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}