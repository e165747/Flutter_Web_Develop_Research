import 'package:flutter/material.dart';
import 'package:flutter_web_develop_research/ui/atoms/common_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text(title)),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          children: [
            CommonButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/pdf-view');
                },
                name: 'pdf表示')
          ],
        ),
      ),
    );
  }
}
