import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:keyboard_actions/keyboard_actions_config.dart';

class TextFormTest extends StatefulWidget {
  const TextFormTest({Key? key}) : super(key: key);

  @override
  State<TextFormTest> createState() => _TextFormTestState();
}

class _TextFormTestState extends State<TextFormTest> {
  @override
  String _text = '';
  final FocusNode _textNode1 = FocusNode();
  final FocusNode _textNode2 = FocusNode();
  final FocusNode _textNode3 = FocusNode();
  final FocusNode _textNode4 = FocusNode();
  final FocusNode _textNode5 = FocusNode();
  final FocusNode _textNode6 = FocusNode();

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  get _keyboardActionConfig {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardSeparatorColor: Colors.red,
      nextFocus: true,
      actions: [
        KeyboardActionsItem(focusNode: _textNode3, toolbarButtons: []),
        KeyboardActionsItem(focusNode: _textNode4, toolbarButtons: []),
        KeyboardActionsItem(focusNode: _textNode5, toolbarButtons: []),
        KeyboardActionsItem(focusNode: _textNode6, toolbarButtons: []),
      ],
    );
  }

  Widget build(BuildContext context) {
    return KeyboardActions(
      config: _keyboardActionConfig,
      child: Container(
          padding: const EdgeInsets.all(50.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  "$_text",
                  style: const TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500),
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'digits'),
                  enabled: true,
                  // 入力数
                  maxLength: 10,
                  style: const TextStyle(color: Colors.red),
                  obscureText: false,
                  maxLines: 1,
                  //パスワード
                  onChanged: _handleText,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  focusNode: _textNode1,
                ),
                TextField(
                  enabled: true,
                  // 入力数
                  maxLength: 10,
                  style: const TextStyle(color: Colors.red),
                  decoration: const InputDecoration(
                      icon: Icon(Icons.flag), labelText: 'decimal'),
                  obscureText: false,
                  maxLines: 1,
                  //パスワード
                  onChanged: _handleText,

                  // 小数のみ入力できるよう設定
                  // https://www.grepper.com/tpc/flutter+textfield+decimal
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^\d+\.?\d{0,2}')),
                  ],

                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  focusNode: _textNode2,
                ),
                TextField(
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'digits'),
                  // 入力数
                  maxLength: 10,
                  style: const TextStyle(color: Colors.red),
                  obscureText: false,
                  maxLines: 1,
                  //パスワード
                  onChanged: _handleText,

                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                  keyboardType: TextInputType.number,
                  focusNode: _textNode3,
                ),
                TextField(
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'digits'),
                  // 入力数
                  maxLength: 10,
                  style: const TextStyle(color: Colors.red),
                  obscureText: false,
                  maxLines: 1,
                  //パスワード
                  onChanged: _handleText,

                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                  keyboardType: TextInputType.number,
                  focusNode: _textNode4,
                ),
                TextField(
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'digits'),
                  // 入力数
                  maxLength: 10,
                  style: const TextStyle(color: Colors.red),
                  obscureText: false,
                  maxLines: 1,
                  //パスワード
                  onChanged: _handleText,

                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                  keyboardType: TextInputType.number,
                  focusNode: _textNode5,
                ),
                TextField(
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'text'),
                  // 入力数
                  maxLength: 10,
                  style: const TextStyle(color: Colors.red),
                  obscureText: false,
                  maxLines: 1,
                  //パスワード
                  onChanged: _handleText,
                  focusNode: _textNode6,
                ),
              ],
            ),
          )),
    );
  }
}
