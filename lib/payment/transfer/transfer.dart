import 'package:cording/payment/transfer/account.dart';
import 'package:cording/payment/transfer/card.dart';
import 'package:cording/payment/transfer/contect.dart';
import 'package:cording/payment/transfer/mobcontect.dart';
import 'package:cording/payment/transfer/phone.dart';
import 'package:flutter/material.dart';

class Transfer extends StatefulWidget {
  Transfer({Key? key}) : super(key: key);

  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,  
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[700],
          title: Text(
            'Transfer'
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Contact',),
              Tab(text: 'Phone',),
              Tab(text: 'Card',),
              Tab(text: 'Account',)

            ],),
        ),
        body: TabBarView(
          children: [
            Mobilecontact(),
            Phone(),
            Cardno(),
            Account()
          ]),
      ),
    );
  }
}