import 'package:flutter/material.dart';
import 'package:flutter_web_develop_research/ui/organisms/content.dart';

class CustomKeyboardTextFormTestPage extends StatelessWidget {
  const CustomKeyboardTextFormTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('テキストフォーム')), body: Content());
  }
}
