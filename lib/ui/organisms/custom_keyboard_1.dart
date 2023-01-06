import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_custom.dart';

// https://dev.classmethod.jp/articles/flutter-keyboard-actions/
// CustomKeyboard側の実装
class CustomKeyboard1 extends StatelessWidget
    with KeyboardCustomPanelMixin<String>
    implements PreferredSizeWidget {
  final ValueNotifier<String> notifier;

  CustomKeyboard1({Key? key, required this.notifier}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                int value = int.tryParse(notifier.value) ?? 0;
                value--;
                updateValue(value.toString());
              },
              child: FittedBox(
                child: Text(
                  "↓",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                int value = int.tryParse(notifier.value) ?? 0;
                value++;
                updateValue(value.toString());
              },
              child: FittedBox(
                child: Text(
                  "↑",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
