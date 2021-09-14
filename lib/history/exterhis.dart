import 'package:cording/transaction/transation.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
class Eterhis extends StatelessWidget {
  const Eterhis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GroupedListView<dynamic, String>(
        elements: tranceData, 
        groupBy: (index) => index['tranceDate'],
        itemComparator: (item1, item2) =>
            item1['tranceDeatails'].compareTo(item2['tranceAmount']),
        groupSeparatorBuilder: (String groupByValue) => Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 10),
                      child: Text(
                        groupByValue,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize:20,fontWeight: FontWeight.w700,color: Colors.blueGrey[200])
                      ),
                    )
                  ],
                ))
            ],
          ),
          ), 
          itemBuilder: (context, dynamic element) {
            
            return Card(
              child: ListTile(
                leading: Image.asset(element['trnceIcon'],color: Colors.blue, height: 30, width: 30,),
                title: Text(element['tranceName'],
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                )
                ),
                subtitle: Row(
                  children: [
                    Text(element['tranceAmount'],
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                    ),
                    ),
                    SizedBox(width: 10,),
                    Text(element['tranceDeatails'],
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                    ),
                    )
                  ],
                ),
              ),
            );
          }
        );
  }
}

  class TranceModel {
  String tranceName;
  String trnceIcon;
  String tranceDate;
  String tranceAmount;
  String tranceDeatails;
  
  TranceModel(this.tranceName, this.trnceIcon, this.tranceDate, this.tranceAmount, this.tranceDeatails);
}