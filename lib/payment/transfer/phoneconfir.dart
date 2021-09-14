import 'package:cording/finished/finished.dart';
import 'package:cording/payment/upiscreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PhoneConfirmation extends StatelessWidget {

  bool loading = false;
         String name;
       String account;
       String amount;
       String discription;

   PhoneConfirmation({required this.amount, required this.name, required this.account, required this.discription});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text('Summary'),
      ),
      body: Container(
        child: ListView(children: [
           Padding(padding: EdgeInsets.only(top: 30,left: 60, bottom: 20),
            child: Text('Source Account',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 75,
              child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 20,
                          bottom: 10,
                          child: Image.asset('assets/atmlogo/visa.png')
                            ),
                          Positioned(
                            left: 100,
                            top: 15,
                            child: Text('VISA Card',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          Positioned(
                            left: 100,
                            bottom: 15,
                            child: Text('**** **** **** 0674',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          Positioned(
                            top: 25,
                            right: 20,
                            child: Text('2,50,000',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.blueAccent
                            ),
                            )
                          )
                      ],
                    )
                  ),
            ),
            Padding(padding: EdgeInsets.only(top: 30,left: 60, ),
            child: Text('Beneficiant Name',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 50,
              child: Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset('assets/icon/profile.png',color: Colors.blueAccent, height: 35, width: 35,),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$name",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30,left: 60, ),
            child: Text('Account Number',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 50,
              child: Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset('assets/icon/forin.png',color: Colors.blueAccent, height: 35, width: 35,),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$account",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30,left: 60, ),
            child: Text('Amount',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 50,
              child: Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset('assets/currency/india.png',color: Colors.blueAccent, height: 35, width: 35,),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$amount.00",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30,left: 60, ),
            child: Text('TRANSFER DISCRIPTION',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            SizedBox(
              height: 50,
              child: Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset('assets/icon/dowcard.png',color: Colors.blueAccent, height: 35, width: 35,),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$discription",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ),
             SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pinscreen(amount: amount, )));
                },
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.blueAccent,
                  ),
                  child: Stack(
                    children: [
                     
                        Positioned(
                          left: 150,
                          bottom: 25,
                          child: Text('Confirm',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                          ),
                          )
                        ),
                        
                    ],
                  )
                ),
                
              ),
            ),
            SizedBox(height: 20,)

        ],),
      ),
    );
  }

  void setState(bool bool) {}
}