import 'package:flutter/material.dart';

class NumericInfoItem extends StatelessWidget {
  final String infoName;
  final int infoValue;

  const NumericInfoItem(this.infoName, this.infoValue);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$infoValue',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text('$infoName'),
      ],
    );
  }
}
