import 'package:cording/history/history.dart';
import 'package:cording/homepage.dart';
import 'package:cording/payment/payment.dart';
import 'package:flutter/material.dart';

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