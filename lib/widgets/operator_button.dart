import 'package:flutter/material.dart';

import '../res/colors.dart' as c;

class OperatorButton extends StatelessWidget {
  final String label;
  final Function onTap;
  OperatorButton({
    @required this.label,
    @required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      splashColor: Colors.white.withOpacity(.8),
      child: Container(
        margin:const EdgeInsets.all(5),
        height: height * 0.09,
        width: width * 0.17,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: c.Colors.accentOpratorButtons.withOpacity(.5),
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: FittedBox(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
