import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({Key? key, required this.onPressed, required this.name})
      : super(key: key);

  final void Function() onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ElevatedButton(onPressed: onPressed, child: Text(name)),
    );
  }
}
