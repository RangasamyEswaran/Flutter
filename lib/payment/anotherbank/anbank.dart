import 'package:cording/payment/transfer/account.dart';
import 'package:cording/payment/transfer/phone.dart';
import 'package:flutter/material.dart';

class AnotherBank extends StatelessWidget {
  const AnotherBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[700],
          title: Text('Other Banks'),
          bottom: TabBar(tabs: [
            Tab(text: 'Phone'),
            Tab(text: 'Account'),
    
          ],),
        ),
        body: TabBarView(
          children: [
            Phone(),
            Account()
          ]),
      ),
    );
  }
}