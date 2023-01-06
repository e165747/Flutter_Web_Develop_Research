import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

// サイズ調整用
class PdfViewPageVariableSize extends StatefulWidget {
  const PdfViewPageVariableSize({Key? key}) : super(key: key);

  @override
  _PdfViewPageVariableSizeState createState() =>
      _PdfViewPageVariableSizeState();
}

class _PdfViewPageVariableSizeState extends State<PdfViewPageVariableSize> {
  final pdfController =
      PdfController(document: PdfDocument.openAsset('assets/test.pdf'));
  final pdfPinchController =
      PdfControllerPinch(document: PdfDocument.openAsset('assets/test.pdf'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pdf')),
      body: Container(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 300,
              child: PdfViewPinch(
                controller: pdfPinchController,
              ),
            ),
            Container(
              width: 300,
              child: PdfView(
                controller: pdfController,
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.red,
            ))
          ],
        ),
      ),
    );
  }
}
