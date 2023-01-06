import 'package:flutter/material.dart';
import 'package:flutter_web_develop_research/ui/organisms/text_form_test_form.dart';

class TextFormTestPage extends StatelessWidget {
  const TextFormTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('テキストフォーム')), body: TextFormTest());
  }
}
