import 'package:flutter/material.dart';
import 'button.dart';

class Button_row extends StatelessWidget {
  final List<pressionada> buttons;

  Button_row(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, b) {
          list.isEmpty
              ? list.add(b)
              : list.addAll(
                  [SizedBox(width: 1), b],
                );
          return list;
        }),
      ),
    );
  }
}
