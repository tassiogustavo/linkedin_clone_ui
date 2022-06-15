import 'package:flutter/material.dart';

class ActionPost extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionPost({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: .5))),
      child: TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Icon(
              icon,
              size: 17,
              color: Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
