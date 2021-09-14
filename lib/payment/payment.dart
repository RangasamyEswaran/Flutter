import 'package:cording/home/saidbar.dart';
import 'package:cording/payment/automation.dart';
import 'package:cording/payment/pay.dart';
import 'package:cording/payment/templates.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(length: 3, child:  Scaffold(
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
            icon: Icon(Icons.grid_view_rounded)
          ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'PAYMENT',),
              Tab(text: 'TEMPLATES',),
              Tab(text: 'AUTOMATIC',),
            ]
            ),
        
        ),
        body: TabBarView(children: [
          Pay(),
          Templates(),
          Automation()
        ]),
      ),
    );
  }
}

