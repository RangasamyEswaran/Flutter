import 'package:cording/payment/transfer/phoneconfir.dart';
import 'package:flutter/material.dart';

class Transsaction extends StatefulWidget {
  const Transsaction({Key? key}) : super(key: key);

  @override
  _TranssactionState createState() => _TranssactionState();
}

class _TranssactionState extends State<Transsaction> {
  // ignore: non_constant_identifier_names
  TextEditingController _Name =  TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController _Account =  TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController _Amount =  TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController _Discription =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text('Transfer to Recipient'),
      ),
      body:Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20,left: 50, bottom: 20),
              child: Text('Source Account',
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
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left:50,),
              child: Text('Beneficiant Name',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
             Container(
              child: ListTile(
                onTap: () {},
                leading: Image.asset('assets/icon/profile.png',color: Colors.blueAccent, height: 30, width: 30,),
                title: Container(
          padding: const EdgeInsets.only(left: 10,right: 20),
          child: TextField(
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 25
            ),
            controller: _Name,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              
                 ),
                )
                ),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 50),
              child: Text('Account Number',
              style: TextStyle(
                color: Colors.blueGrey[200],
                fontSize: 20
              ),
              ),
            ),
            Container(
              child: ListTile(
                onTap: () {},
                leading: Image.asset('assets/icon/forin.png',color: Colors.blueAccent, height: 30, width: 30,),
                title: Container(
          padding: const EdgeInsets.only(left: 10,right: 20),
          child: TextField(
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 25
            ),
            controller: _Account,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              
                 ),
                )
                ),
                ),
            ),
            Padding(padding: EdgeInsets.only(left: 50,top: 20 ),
            child: Text('Amount',
            style: TextStyle(
              color: Colors.blueGrey[200],
              fontSize: 20
            ),
            ),
            ),
            Container(
              child: ListTile(
                onTap: () {},
                leading: Image.asset('assets/currency/india.png',color: Colors.blueAccent, height: 30, width: 30,),
                title: Container(
          padding: const EdgeInsets.only(left: 10,right: 20),
          child: TextField(
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 25
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
              height: 20,
            ),
            Container(
              
              child: ListTile(
                onTap: () {},
                leading: Image.asset('assets/icon/dowcard.png',color: Colors.blueAccent, height: 30, width: 30,),
                title: Container(
          padding: const EdgeInsets.only(left: 10,right: 20),
          child: TextField(
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20
            ),
            controller: _Discription,
            
            decoration: InputDecoration(
              labelText: 'TRANSFER DISCRIPTION',
              fillColor: Colors.blueAccent,
                 ),
                )
                ),
                ),
            ),


            SizedBox(
              height: 120,
            ),
            SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhoneConfirmation(amount: _Amount.text, name: _Name.text, account: _Account.text, discription: _Discription.text,),));
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
        ),
      )
    );
  }
}