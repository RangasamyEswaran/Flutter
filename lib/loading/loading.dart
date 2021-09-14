import 'dart:async';

import 'package:cording/finished/finished.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// ignore: must_be_immutable
class Loading extends StatefulWidget {
  String amount;
   Loading({required this.amount});

  @override
  _LoadingState createState() => _LoadingState(amount: amount);
}

class _LoadingState extends State<Loading> {
  String amount;
   _LoadingState({required this.amount});
  


  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
                  Navigator.pushAndRemoveUntil(context,  MaterialPageRoute<void>(builder: (BuildContext context) => Finished(amount: amount,)), (route) => false);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[700],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/1.jpg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.2), BlendMode.dstATop)
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The point',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}