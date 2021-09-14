import 'package:cording/payment/tamplate/templatedetails.dart';
import 'package:cording/payment/tamplate/templatelist.dart';
import 'package:cording/transaction/transation.dart';
import 'package:flutter/material.dart';

class Templates extends StatefulWidget {
  Templates({Key? key}) : super(key: key);

  @override
  _TemplatesState createState() => _TemplatesState();
}

class _TemplatesState extends State<Templates> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: 
          [
            Padding(
               padding:EdgeInsets.only(top: 20,left: 30,bottom: 10),
               child: Row(
                 children: [
                   Text('SAVED TEMPLATES',
                   style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 20,
                          ),)
                 ],
               ), 
             ),
            ListView.builder(
               itemCount: template.length,
               shrinkWrap: true,
               physics: BouncingScrollPhysics(),
               
               itemBuilder: (context, index) {
               
                 return InkWell(
                   onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Templatedetails(tempModel: template[index],)),);
                   },
                   child: Container(
                     height: 65,
                     margin: EdgeInsets.only(bottom: 10, left: 10,right: 10,top: 10),
                     decoration: BoxDecoration(
                       color: Colors.grey[300],
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Stack(
                       children: [
                         Positioned(top: 20,
                         left: 20,

                           child: Text(
                             template[index].name,
                             style: TextStyle(
                               color: Colors.blueAccent,
                               fontSize: 20,
                               fontWeight: FontWeight.w600
                             ),
                           )
                         ),
                         Positioned(top: 20,
                         left: 120,

                           child: Text(
                             'Transfered Amount:',
                             style: TextStyle(
                               color: Colors.blueAccent,
                               fontSize: 20,
                               fontWeight: FontWeight.w600
                             ),
                           )
                         ),
                         Positioned(top: 20,
                         left: 270,

                           child: Text(
                             template[index].amount,
                             style: TextStyle(
                               color: Colors.blueAccent,
                               fontSize: 20,
                               fontWeight: FontWeight.w600
                             ),
                           )
                         ),

                       ]
                     )
                   ),
                 );    
               },
             ),
        ],
      ),
    );
  }
}