import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

// 縦表示
class PdfViewPinchPage extends StatefulWidget {
  const PdfViewPinchPage({Key? key}) : super(key: key);

  @override
  _PdfViewPinchPageState createState() => _PdfViewPinchPageState();
}

class _PdfViewPinchPageState extends State<PdfViewPinchPage> {
  final pdfPinchController =
      PdfControllerPinch(document: PdfDocument.openAsset('assets/test.pdf'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pdf')),
      body: PdfViewPinch(
        controller: pdfPinchController,
      ),
    );
  }
}
