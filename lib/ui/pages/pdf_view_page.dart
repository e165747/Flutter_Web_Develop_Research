import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

// 横スライド表示
class PdfViewPage extends StatefulWidget {
  const PdfViewPage({Key? key}) : super(key: key);

  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  final pdfController =
      PdfController(document: PdfDocument.openAsset('assets/test.pdf'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pdf')),
      body: PdfView(
        controller: pdfController,
      ),
    );
  }
}
