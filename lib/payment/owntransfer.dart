import 'package:cording/cards.dart';
import 'package:cording/payment/conformationpage.dart';
import 'package:cording/payment/transfer/contect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class OwnTransfer extends StatefulWidget {
  
  const OwnTransfer({Key? key, }) : super(key: key);

  @override
  _OwnTransferState createState() => _OwnTransferState();
}





class _OwnTransferState extends State<OwnTransfer> {

  int index =0;

  // ignore: non_constant_identifier_names
  TextEditingController _Amount =  TextEditingController();

  _showModalbottomSheet(Context){
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20)
          )
        ),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [ 
            Padding(padding: EdgeInsets.only(top: 20,left: 20, bottom: 20),
            child: Text('My Cards',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            Container(
                     
                     height: 300,
                     
                     
                     child: ListView.builder(
                      
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                       itemCount: cards.length,
                       
                       itemBuilder: (context, index){
                         return InkWell(
                           onTap: () {
                             Navigator.of(context).pop();
                           },
                           child: Container(
                             
                             margin: EdgeInsets.only(bottom: 10),
                             height: 75,
                             
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(28),
                                       color: Colors.white10
                             
                             ),
                             child: Stack(children: [
                               Positioned(
                                top: 10,
                                left: 20,
                                bottom: 10,
                                child: Image.asset(cards[index].cardType,width: 60,height: 60,)
                                  ),
                                Positioned(
                                  left: 100,
                                  top: 15,
                                  child: Text(cards[index].cardname,style: GoogleFonts.inter(
                                   fontSize: 20,
                                   fontWeight: FontWeight.w700,
                                   color: Colors.blueAccent
                                 ),)
                                ),
                                Positioned(
                                  left: 100,
                                  bottom: 15,
                                  child: Text(cards[index].cardNumber,style: GoogleFonts.inter(
                                    fontSize: 18,
                                    color: Colors.blueAccent
                                  ),)
                                ),
                                Positioned(
                                  top: 25,
                                  right: 20,
                                  child: Row(
                                        children: [
                                          Image.asset(cards[index].cardcurrency, height: 27, width: 27, color: Colors.blueAccent,),
                                          Text(cards[index].cardBalance,style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.blueAccent
                                          ),),
                                        ],
                                      )
                                )
                             ],),
                           ),
                         );
                       }
                     ),
                   ),
          ]
        ),
      );
    });
  }
    // ignore: non_constant_identifier_names
    _showModalbottomSheet1(Context){
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 350,
        child: Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            )
          ),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children:[ 
              Padding(padding: EdgeInsets.only(top: 20,left: 20, bottom: 20),
              child: Text('My Cards',
              style: TextStyle(
                        color: Colors.blueGrey[200],
                        fontSize: 20,
                      ),
              ),
              ),
              Container(
                       
                       height: 300,
                       
                       
                       child: ListView.builder(
                        
                         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                         itemCount: cards.length,
                         
                         itemBuilder: (context, index){
                           return InkWell(
                             onTap: () {
                               Navigator.of(context).pop(cards[index]);
                             },
                             child: Container(
                               
                               margin: EdgeInsets.only(bottom: 10),
                               height: 75,
                               
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(28),
                                         
                               
                               ),
                               child: Stack(children: [
                                 Positioned(
                                  top: 10,
                                  left: 20,
                                  bottom: 10,
                                  child: Image.asset(cards[index].cardType,width: 60,height: 60,)
                                    ),
                                  Positioned(
                                    left: 100,
                                    top: 15,
                                    child: Text(cards[index].cardname,style: GoogleFonts.inter(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w700,
                                     color: Colors.blueAccent
                                   ),)
                                  ),
                                  Positioned(
                                    left: 100,
                                    bottom: 15,
                                    child: Text(cards[index].cardNumber,style: GoogleFonts.inter(
                                      fontSize: 18,
                                      color: Colors.blueAccent
                                    ),)
                                  ),
                                  Positioned(
                                    top: 25,
                                    right: 20,
                                    child: Row(
                                          children: [
                                            Image.asset(cards[index].cardcurrency, height: 27, width: 27, color: Colors.blueAccent,),
                                            Text(cards[index].cardBalance,style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.blueAccent
                                            ),),
                                          ],
                                        )
                                  )
                               ],),
                             ),
                           );
                         }
                       ),
                     ),
            ]
          ),
        ),
      );
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[700],
          title: Text('Transfer Between own Accounts'),
        ),
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Padding(padding: EdgeInsets.only(top: 20,left: 20, bottom: 20),
              child: Text('Source Account',
              style: TextStyle(
                        color: Colors.blueGrey[200],
                        fontSize: 20,
                      ),
              ),
              ),
              InkWell(
                onTap: () {
                  _showModalbottomSheet(Context);
                },
                child: Container(
                   
                   height: 75,
                   
                   
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     padding: EdgeInsets.only(left: 16, right: 6),
                     itemCount: 1,
                     itemBuilder: (context, index){
                       return Container(
                         
                         margin: EdgeInsets.only(right: 10),
                         height: 75,
                         width: 345,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(28),
                                   
                         
                         ),
                         child: Stack(children: [
                           Positioned(
                            top: 10,
                            left: 20,
                            bottom: 10,
                            child: Image.asset(cards[index].cardType,width: 60,height: 60,)
                              ),
                            Positioned(
                              left: 100,
                              top: 15,
                              child: Text(cards[index].cardname,style: GoogleFonts.inter(
                               fontSize: 20,
                               fontWeight: FontWeight.w700,
                               color: Colors.blueAccent
                             ),)
                            ),
                            Positioned(
                              left: 100,
                              bottom: 15,
                              child: Text(cards[index].cardNumber,style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.blueAccent
                              ),)
                            ),
                            Positioned(
                              top: 25,
                              right: 20,
                              child: Row(
                                    children: [
                                      Image.asset(cards[index].cardcurrency, height: 27, width: 27, color: Colors.blueAccent,),
                                      Text(cards[index].cardBalance,style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blueAccent
                                      ),),
                                    ],
                                  )
                            )
                         ],),
                       );
                     }
                   ),
                 ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.only(top: 20,bottom: 20, left: 20),
              child: Text('Destination Account',
              style: TextStyle(
                        color: Colors.blueGrey[200],
                        fontSize: 20,
                      ),
                    ),
                  ),
              
              InkWell(
                onTap: () {
                  _showModalbottomSheet1(Context);
                },
                child: Container(
                   
                   height: 75,
                   
                   
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     padding: EdgeInsets.only(left: 16, right: 6),
                     itemCount: 1,
                     
                     itemBuilder: (context, index){
                       return Container(
                         
                         margin: EdgeInsets.only(right: 10),
                         height: 75,
                         width: 345,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(28),
                                
                         
                         ),
                         child: Stack(children: [
                           Positioned(
                            top: 10,
                            left: 20,
                            bottom: 10,
                            child: Image.asset(cards[index].cardType,width: 60,height: 60,)
                              ),
                            Positioned(
                              left: 100,
                              top: 15,
                              child: Text(cards[index].cardname,style: GoogleFonts.inter(
                               fontSize: 20,
                               fontWeight: FontWeight.w700,
                               color: Colors.blueAccent
                             ),)
                            ),
                            Positioned(
                              left: 100,
                              bottom: 15,
                              child: Text(cards[index].cardNumber,style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.blueAccent
                              ),)
                            ),
                            Positioned(
                              top: 25,
                              right: 20,
                              child: Row(
                                    children: [
                                      Image.asset(cards[index].cardcurrency, height: 27, width: 27, color: Colors.blueAccent,),
                                      Text(cards[index].cardBalance,style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blueAccent
                                      ),),
                                    ],
                                  )
                            )
                         ],),
                       );
                     }
                   ),
                 ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(top: 20,bottom: 20, left: 20),
              child: Text('Amount',
              style: TextStyle(
                        color: Colors.blueGrey[200],
                        fontSize: 20,
                      ),
              ),
              ),
              Container(
                child: ListTile(
                  onTap: () {},
                  leading: Image.asset('assets/currency/india.png',color: Colors.blueAccent, height: 40, width: 40,),
                  title: Container(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20
              ),
              controller: _Amount,
              keyboardType: TextInputType.number,
              
              decoration: InputDecoration(
                
              ),
            )
      ),
                  ),
              ),
            
              SizedBox(
                height: 200,
              ),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => 
                        Confirmation(amount: _Amount.text,cardModel: cards[index]),));
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
                            child: Text('Next',
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
              
            
              
            ],
          )
          
        ),
        
      ),
    );
  }

}
