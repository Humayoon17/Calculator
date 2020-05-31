import 'package:flutter/material.dart';

import '../widgets/eqaulity_button.dart';
import '../widgets/operation_button.dart';
import '../widgets/operator_button.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              OperationButton(
                label: 'C',
                onTap: () {},
              ),
              OperationButton(
                label: '\u232B',
                onTap: () {},
              ),
              OperationButton(
                label: '%',
                onTap: () {},
              ),
              OperationButton(
                label: '÷',
                onTap: () {},
              ),
            ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            OperatorButton(
              label: '7',
              onTap: () {},
            ),
            OperatorButton(
              label: '8',
              onTap: () {},
            ),
            OperatorButton(
              label: '9',
              onTap: () {},
            ),
            OperationButton(
              label: '×',
              onTap: () {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            OperatorButton(
              label: '4',
              onTap: () {},
            ),
            OperatorButton(
              label: '5',
              onTap: () {},
            ),
            OperatorButton(
              label: '6',
              onTap: () {},
            ),
            OperationButton(
              label: '-',
              onTap: () {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            OperatorButton(
              label: '1',
              onTap: () {},
            ),
            OperatorButton(
              label: '2',
              onTap: () {},
            ),
            OperatorButton(
              label: '3',
              onTap: () {},
            ),
            OperationButton(
              label: '+',
              onTap: () {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            OperatorButton(
              label: '( )',
              onTap: () {},
            ),
            OperatorButton(
              label: '0',
              onTap: () {},
            ),
            OperatorButton(
              label: '.',
              onTap: () {},
            ),
            EqualityButton(),
          ],
        ),
      ],
    );
  }
}
