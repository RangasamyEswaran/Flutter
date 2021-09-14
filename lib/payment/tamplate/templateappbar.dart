import 'package:cording/payment/templates.dart';
import 'package:flutter/material.dart';

class Templateappbar extends StatelessWidget {
  const Templateappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text(
          'Transfer and Payment Templates'
        ),
        
      ),
      body: Container(child: Templates()),
    );
  }
}