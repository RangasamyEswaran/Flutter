import 'package:cording/home.dart';
import 'package:cording/homepage.dart';
import 'package:cording/main.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Finished extends StatefulWidget {
  // const Finished({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  static final ROUTE = 'finished';
  String amount;
  Finished({required this.amount,});



  @override
  _FinishedState createState() => _FinishedState();
}

class _FinishedState extends State<Finished> {

  // ignore: unused_element
static Route<void> _myRouteBuilder(BuildContext context, Object? arguments) {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => MyApp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Container(
          
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background/1.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.2), BlendMode.dstATop)
              )
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(300),
          
          child: SizedBox(
            height: 200,
            child: Column(
              children: [
                Image.asset('assets/background/Done.png',height: 90, width: 90,),
                Text('Completed!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/atmlogo/visa.png',height: 30,width: 30,),
                    SizedBox(width: 10,),
                    Text('VISA Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      
                    ),
                    ),
                    SizedBox(width: 10,),
                    Text('**** 0674',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,

                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/currency/india.png',color: Colors.white, height: 35, width: 35,),
                    Text("${widget.amount}.00", style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),)
                  ],
                )
              ],
            ),
          ),
        ),
        
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.download_outlined,size: 20,color: Colors.blueAccent,),
                  title: Text('Save a receipt',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent
                  ),),
                  )
              ),
              SizedBox(
                height: 25,
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.document_scanner_outlined,size: 20,color: Colors.blueAccent,),
                  title: Text('Create a Template',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent
                  ),),
                  )
              ),
              SizedBox(
                height: 25,
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.timer,size: 20,color: Colors.blueAccent,),
                  title: Text('Set up payment shedule',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent
                  ),),
                  )
              ),
              SizedBox(
                height: 90,
              ),
              SizedBox(
              height: 75,
              child: InkWell(
                
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  Navigator.pushAndRemoveUntil(context,  MaterialPageRoute<void>(builder: (BuildContext context) => Home()), (route) => false);
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
                          left: 130,
                          bottom: 25,
                          child: Text('Home',
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
    );
  }
}