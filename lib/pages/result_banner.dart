import 'package:flutter/material.dart';

class ResultBanner extends StatefulWidget {

  @override
  _ResultBannerState createState() => _ResultBannerState();
}

class _ResultBannerState extends State<ResultBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextFormField(
            textAlign: TextAlign.right,
            initialValue: '150',
            enabled: false,
            style: TextStyle(
              color: Theme.of(context).textTheme.button.color,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
          TextFormField(
            textAlign: TextAlign.right,
            initialValue: '100+50',
            enabled: false,
            style: TextStyle(
              color: Theme.of(context).textTheme.button.color,
              fontSize: 25,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
