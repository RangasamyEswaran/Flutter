import 'package:cording/payment/anotherbank/anbank.dart';
import 'package:cording/payment/automation.dart';
import 'package:cording/payment/options.dart';
import 'package:cording/payment/owntransfer.dart';
import 'package:cording/payment/tamplate/templateappbar.dart';
import 'package:cording/payment/templates.dart';
import 'package:cording/payment/transfer/qrscan.dart';
import 'package:cording/payment/transfer/transfer.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class Pay extends StatefulWidget {
  Pay({Key? key}) : super(key: key);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text('TRANSFERS',
            style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 20,
                          ),
            ),
            ),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OwnTransfer(),));
                },
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 20,
                        bottom: 10,
                        child: Icon(Icons.compare_arrows_outlined, color: Colors.blueAccent, size: 30,)
                          ),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('Own Transfer',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        )
                    ],
                  )
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Transfer(),));
                },
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.input_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 10,
                          child: Text('To ThePoint clint account',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        Positioned(
                          left: 60,
                          bottom: 15,
                          child: Text('By Phone no, Card no or Account no',
                          style: TextStyle(
                            fontSize: 18,
                            
                            color: Colors.blueAccent
                          ),
                          )
                        )
                    ],
                  )
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherBank(),));
                },
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.outbox_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 10,
                          child: Text('To another Bank account',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        Positioned(
                          left: 60,
                          bottom: 15,
                          child: Text('By Phone no or Account no',
                          style: TextStyle(
                            fontSize: 18,
                            
                            color: Colors.blueAccent
                          ),
                          )
                        )
                    ],
                  )
                ),
                
              ),
            ),
             SizedBox(height: 10,),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {},
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.account_balance_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('Foreign Transfer',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        
                    ],
                  )
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {},
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.card_giftcard_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('ask for Transfer',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        
                    ],
                  )
                ),
                
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text('PAYMENTS',
            style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 20,
                          ),
            ),
            ),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Qrscan(),));
                },
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.qr_code_2_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('Payment by QR code',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        
                    ],
                  ),
                  
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {},
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.description_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('Bill Payment',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        
                    ],
                  ),
                  
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {},
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.phone_android_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('Phone Transfer',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        
                    ],
                  ),
                  
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {},
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.badge_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('Tax Payment',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        
                    ],
                  ),
                  
                ),
                
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text('SETTINGS',
            style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 20,
                          ),
            ),
            ),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Templateappbar()));
                },
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.bookmarks_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('Transfer and Payment Templates',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        
                    ],
                  ),
                  
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Automation()));
                },
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white70,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.access_time_outlined,color: Colors.blueAccent, size: 30,)),
                        Positioned(
                          left: 60,
                          top: 25,
                          child: Text('Automatic payments and tranfers',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                          ),
                          )
                        ),
                        
                    ],
                  ),
                  
                ),
                
              ),
            ),
            
          ],
        ),
      ),

    );
  }
}