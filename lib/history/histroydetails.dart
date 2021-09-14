import 'package:cording/history/allhis.dart';
import 'package:cording/transaction/transation.dart';
import 'package:flutter/material.dart';

class HistroyDetails extends StatelessWidget {
  // const HistroyDetails({Key? key}) : super(key: key);

final TranceModel tranceModel;

  HistroyDetails(this.tranceModel);

 

 

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage('assets/background/1.png'),
                fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.7), BlendMode.dstATop)
              )
            ),
            child: Row(
                                children: [
                                  
                                ],
                              ),
          )
        ],),
        ),
    );
  }
}

