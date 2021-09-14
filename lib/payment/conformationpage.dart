import 'package:cording/cards.dart';
import 'package:cording/finished/finished.dart';
import 'package:cording/payment/upiscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Confirmation extends StatelessWidget {
  // const Confirmation({Key? key}) : super(key: key);
  final CardModel cardModel;
  String amount;
   Confirmation({required this.amount, required this.cardModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text('Summary',
        ),
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
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
                          child: Image.asset(cardModel.cardType)
                            ),
                          Positioned(
                            left: 100,
                            top: 15,
                            child: Text(cardModel.cardname,
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
                            child: Text(cardModel.cardNumber,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          Positioned(
                              top: 25,
                              right: 20,
                              child: Row(
                                      children: [
                                        Image.asset(cardModel.cardcurrency, height: 27, width: 27, color: Colors.blueAccent,),
                                        Text(cardModel.cardBalance,style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blueAccent
                                        ),),
                                      ],
                                    )
                                )
                      ],
                    )
                  ),
            ),
            Padding(padding: EdgeInsets.only(top: 30,left: 60, bottom: 20),
            child: Text('Destination Account',
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
                                  child: Row(
                                        children: [
                                          Image.asset('assets/currency/uk.png', height: 27, width: 27, color: Colors.blueAccent,),
                                          Text('2,50,000',style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.blueAccent
                                          ),),
                                        ],
                                      )
                                )
                      ],
                    )
                  ),
            ),
            Padding(padding: EdgeInsets.only(top: 30,left: 60, bottom: 20),
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
                    Text(
                      "$amount.00",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Finished(amount: amount,),));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pinscreen(amount: amount,)));
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
}

