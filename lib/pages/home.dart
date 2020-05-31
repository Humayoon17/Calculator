import 'dart:math' as math;

import 'package:flutter/material.dart';

import './keyboard.dart';
import '../res/colors.dart' as c;
import './result_banner.dart';

class Home extends StatefulWidget {
  final Function darkModeToggle;
  final bool isDarkMode;
  Home(this.darkModeToggle, this.isDarkMode);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.filter_list,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text('Calculator'),
        actions: <Widget>[
          Transform.rotate(
            angle: -math.pi / 0.85,
            child: IconButton(
              icon: Icon(
                widget.isDarkMode
                    ? Icons.brightness_high
                    : Icons.brightness_low,
                size: 18,
              ),
              onPressed: widget.darkModeToggle,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ResultBanner(),
          ),
          Divider(
            thickness: 1,
            color: c.Colors.accentColor,
          ),
          Keyboard(
            
          ),
        ],
      ),
    );
  }
}
