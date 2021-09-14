import 'package:cording/payment/upiscreen.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Qrresult extends StatefulWidget {
  final Barcode barcode;
  const Qrresult({Key? key, required this.barcode}) : super(key: key);

  @override
  _QrresultState createState() => _QrresultState();
}

class _QrresultState extends State<Qrresult> {
  // ignore: non_constant_identifier_names
  TextEditingController _Amount =  TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent[700],
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[700],
          title: Text('Send Amount'),
        ),
        body: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(padding: EdgeInsets.only(left: 30,top: 30,bottom: 10),
              child: Text(
                'Receiver ID:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 50,bottom: 10),
              child: Text(
                "${widget.barcode.code}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 30,),
              child: Text(
                'Enter Amount:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              ),
              
                Container(
                  child: ListTile(
                    onTap: () {},
                    leading: Image.asset('assets/currency/india.png',color: Colors.white, height: 40, width: 40,),
                    title: Container(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
                controller: _Amount,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  hoverColor: Colors.white
                ),
              )
            ),
          ),
        ),
              // Positioned(
              //   left: 30,
              //   child: Text(
              //   'Receiver ID',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20
              //   ),
              // )),
              
              // Positioned(
              //   top: 20,
              //   left: 30,
              //   child: Text(
              //   "${barcode.code}",
              //   style: TextStyle(
              //     color: Colors.white70,
              //     fontSize: 20,
              //     fontWeight: FontWeight.w600
              //   ),
              // ))
              SizedBox(
              height: 250,
            ),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pinscreen(amount: _Amount.text,)));
                },
                
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

            ],
          ),
        ),
      ),
    );
  }
}