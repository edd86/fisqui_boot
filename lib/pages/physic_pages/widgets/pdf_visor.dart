import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfVisor extends StatelessWidget {
  final String pdfURL;

  const PdfVisor(this.pdfURL, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Visor PDF'),
      ),
      body: SfPdfViewer.asset(
        pdfURL
         // Aquí va la URL del PDF
      ),
    );
  }
}