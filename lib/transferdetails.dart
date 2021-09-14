import 'package:cording/transaction/transation.dart';
import 'package:flutter/material.dart';

class Trensactiondetails extends StatelessWidget {
  final TranceModel tranceModel;
  const Trensactiondetails({Key? key, required this.tranceModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text('Transaction Details',
        style: TextStyle(
          fontWeight: FontWeight.w600
        ),
        ),
        actions: [
          
            IconButton(
              icon: Icon(Icons.share_outlined), onPressed: () {  },
              )
          
        ],
      ),
      body: Container(
        child: ListView(physics: BouncingScrollPhysics(),
        children: [
          Padding(
               padding:EdgeInsets.only(top: 20,left: 30,bottom: 10),
               child: Row(
                 children: [
                   Text('SELECTED TEMPLATE DETAILS',
                   style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 20,
                          ),)
                 ],
               ), 
             ),

          SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.only(top: 30,left: 20, ),
            child: Text('BENEFICIANT NAME:',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 345,
              child: Container(
                margin: EdgeInsets.only(left: 50,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.person_outline,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        tranceModel.tranceName,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.only(top: 30,left: 20, ),
            child: Text('TRANSACTION TYPE:',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 345,
              child: Container(
                margin: EdgeInsets.only(left: 50,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.swap_vert,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        tranceModel.tranceDeatails,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.only(top: 30,left: 20, ),
            child: Text('TRANSFERED AMOUNT:',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 345,
              child: Container(
                margin: EdgeInsets.only(left: 50,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.paid_outlined,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        tranceModel.tranceAmount,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.only(top: 30,left: 20, ),
            child: Text('BENIFICIANT CONTEXT NO:',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 345,
              child: Container(
                margin: EdgeInsets.only(left: 50,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.assignment_ind_outlined,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        tranceModel.contectNo,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.only(top: 30,left: 20, ),
            child: Text('TRANSACTION TYPE:',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 345,
              child: Container(
                margin: EdgeInsets.only(left: 50,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.event_outlined,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        tranceModel.tranceDate,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
                
          ],
        ),
      ),
    );
  }
}

