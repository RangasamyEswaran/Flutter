import 'package:cording/history/history.dart';
import 'package:cording/homepage.dart';
import 'package:cording/payment/owntransfer.dart';
import 'package:cording/payment/payment.dart';
import 'package:cording/payment/transfer/card.dart';
import 'package:cording/payment/transfer/phone.dart';
import 'package:cording/payment/transfer/qrscan.dart';
import 'package:cording/payment/transfer/transfer.dart';
import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
  

//     scureScreen() async{
//     await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
//   }
// @override
// // ignore: override_on_non_overriding_member
// void initState(){
//   super.initState();
//   scureScreen();
// }

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final QuickActions quickActions = QuickActions();

  @override
  void initState() {
    super.initState();
    quickActions.setShortcutItems(
      [
        ShortcutItem(type: 'qrcode', localizedTitle: 'QR Scan', icon: 'qrcode', ),
        ShortcutItem(type: 'Transfer', localizedTitle: 'Transfer', icon: 'phone'),
        ShortcutItem(type: 'OwnTrandfer', localizedTitle: 'Own Trandfer', icon: 'card'),
      ]
    );
    quickActions.initialize((type) {
      if(type=='qrcode'){
        Navigator.pushAndRemoveUntil(context,  MaterialPageRoute<void>(builder: (BuildContext context) => Qrscan()), (route) => false);
      }else if(type == 'Transfer'){
        Navigator.pushAndRemoveUntil(context,  MaterialPageRoute<void>(builder: (BuildContext context) => Transfer()), (route) => false);
      }else if(type == 'OwnTrandfer'){
        Navigator.pushAndRemoveUntil(context,  MaterialPageRoute<void>(builder: (BuildContext context) => OwnTransfer()), (route) => false);
      }
     });
  }

  int _currentIndex=0;

  final List<Widget> _children = [
    HomePage(),
    Payment(),
    History()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _children[_currentIndex],

    bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 30,
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text('Home'),
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input_rounded,),
            title: Text('Payments'),
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restore_outlined),
            title: Text('Histry'),
          ),
        ],
        onTap: (index){
      setState(() {
        _currentIndex=index;
      });
    }
      )
    );
  }
}