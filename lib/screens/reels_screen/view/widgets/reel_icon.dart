import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReelIcon extends StatelessWidget {
  final IconData icon;
  String label = '';
  ReelIcon(this.icon, {this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Spacer(),
          Column(
            children: [
              Container(
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                label,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
