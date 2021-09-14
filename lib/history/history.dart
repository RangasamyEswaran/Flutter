import 'package:cording/history/allhis.dart';
import 'package:cording/history/exterhis.dart';
import 'package:cording/history/incohis.dart';
import 'package:cording/home/saidbar.dart';
import 'package:cording/transaction/transation.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class History extends StatefulWidget {
  History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {




    return DefaultTabController(length: 3,
      child: Scaffold(
        drawer: Saidbar(),
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[700],
          
        
          title: Container(
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
            decoration: BoxDecoration(            
              color: Color.fromARGB(50, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1, 
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'search',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ),
                  ),
                ),
                Expanded(
                  flex: 0, 
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.white,)
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications)
          ),
          ],
          bottom: TabBar(
              tabs: [
                Tab(text: 'ALL HISTROY',),
                Tab(text: 'INCOMING',),
                Tab(text: 'EXTERNAL',),
              ]
              ),
          
          ),
    
        body: 
      
    TabBarView(children: [
            Allhis(),
            Incohis(),
            Eterhis(),
            
          ]),
    
        
      ),
    );
  }
}

