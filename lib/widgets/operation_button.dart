import 'package:flutter/material.dart';

import '../res/colors.dart' as c;

class OperationButton extends StatelessWidget {
  final String label;
  final Function onTap;
  OperationButton({
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
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5),
        height: height * 0.09,
        width: width * 0.17,
        decoration: BoxDecoration(
          color: c.Colors.operatorButtons.withOpacity(0.8),
          borderRadius: BorderRadius.circular(50),
        ),
        child: FittedBox(
          child: Text(
            '$label',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
