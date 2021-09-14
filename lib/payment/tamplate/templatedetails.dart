import 'package:cording/payment/tamplate/templatelist.dart';
import 'package:flutter/material.dart';

class Templatedetails extends StatelessWidget {
  final TempModel tempModel;
  const Templatedetails({Key? key, required this.tempModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text(
          'Template Summary'
        ),
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
                        tempModel.name,
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
            child: Text('BENEFICIANT CONTECT NO:',
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
                margin: EdgeInsets.only(left: 50),
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
                        tempModel.phone,
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
            child: Text('TRANSACTION AMOUNT:',
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
                margin: EdgeInsets.only(left: 50),
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
                        tempModel.amount,
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
            child: Text('TRANSACTION DETAILS:',
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
                    Icon(Icons.description_outlined,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        tempModel.details,
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
          Padding(padding: EdgeInsets.only(top: 30,left: 20, ),
            child: Text('TRANSACTION DATE:',
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
                margin: EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.today_outlined,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        tempModel.date,
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