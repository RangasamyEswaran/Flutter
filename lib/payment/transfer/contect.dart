import 'package:cording/payment/transfer/condetail.dart';
import 'package:cording/payment/transfer/coninfo.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class Context extends StatefulWidget {
  Context({Key? key}) : super(key: key);

  @override
  _ContextState createState() => _ContextState();
}

class _ContextState extends State<Context> {
 
List<ContModel> contect = contectData.map(
  (item) => ContModel(
  item['name'].toString(),
  item['group'].toString(),
  item['no'].toString(),
  item['icon'].toString(),
  item['contBackground'].toString(),
),
).toList();
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: GroupedListView<dynamic, String>(
        
          elements: contectData, 
          groupBy: (index) => index['group'],

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
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contectdetails(),));
                  },
                  leading: CircleAvatar(
                    // backgroundImage: AssetImage(element['contBackground']),
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.black,
                    child: Text(element['group'],style: TextStyle(color: Colors.blueAccent),),
                    radius: 35,
                  ),
                  title: Text(element['name'],
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  )
                  ),
                  subtitle: Text(element['no'],
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 18,

                  ),
                  ),
                  trailing: Image.asset(element['icon'],color: Colors.blueAccent,height: 25,width: 25,),
                  ),
              );
            }
          ),
    );
  }
}

  class ContModel {
  String name;
  String group;
  String no;
  String icon;
  String contBackground;
  
  ContModel(this.name, this.group, this.no, this.icon, this.contBackground);
}
    