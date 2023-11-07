import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PrivatePolicy extends StatelessWidget {
  const PrivatePolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Private policy'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          // установка иконки "назад"
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: SafeArea(
        child: SafeArea(
          child: SfPdfViewer.asset('assets/docs/PrivatePolicy.pdf'),
        ),
      ),
    );
  }
}
