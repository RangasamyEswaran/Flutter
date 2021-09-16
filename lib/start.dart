import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:cording/home.dart';
import 'package:flutter/material.dart';
class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

  

  

  @override
  void initState(){
    super.initState();
    initTimer();
    
  }

  void initTimer()async{
    if (await checkinternet()) {
    Timer(Duration(seconds: 2), (){
      Navigator.pushAndRemoveUntil(context,  MaterialPageRoute<void>(builder: (BuildContext context) => Home()), (route) => false);
    });
    } else {

    }
  }


// ignore: non_constant_identifier_names
Future<bool> checkinternet() async {
var connectivityResult=await (Connectivity().checkConnectivity());
if (connectivityResult==ConnectivityResult.mobile||connectivityResult==ConnectivityResult.wifi){
  return true;
}else{
  return false;
}
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
        child: FutureBuilder(
          future: checkinternet(),
          builder: (BuildContext context, snap){
            if(snap.data==true){
              return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The App is Starting',
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
        );
            }
            else {
              return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please check your inter net Connection',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
              ),
              SizedBox(
                height: 20,
              ),
              // CircularProgressIndicator(
              //   valueColor: AlwaysStoppedAnimation(Colors.white),
              // ),
              SizedBox(
                height: 10,
              ),
              IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Start(),));
              }, icon: Icon(Icons.refresh_outlined,color:Colors.white,size: 40,))
              
            ],
          ),
        );
            }
          }),
        
      ),
    );
  }
}

