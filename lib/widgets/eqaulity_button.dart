import 'package:flutter/material.dart';

import '../res/colors.dart' as c;

class EqualityButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      borderRadius: BorderRadius.circular(50),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.17,
        decoration: BoxDecoration(
          color: c.Colors.operationButton,
          borderRadius: BorderRadius.circular(50),
        ),
        child: FittedBox(
          child: Text(
            '=',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
