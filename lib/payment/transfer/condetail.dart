
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class Contectdetails extends StatelessWidget {
  final Contact contact;
  const Contectdetails({Key? key, required this.contact}) : super(key: key);


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text('Contact Information'),
      ),
      body: Container(
        child: ListView(physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          (contact.avatar != null && contact.avatar!.length > 0) ?
                        Container(
                          child: CircleAvatar(
                            backgroundImage: MemoryImage(contact.avatar!,),
                            radius: 100,
                            
                          ),
                        ) :
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                          ),
                          child: CircleAvatar(
                            child: Text(
                              contact.initials(),
                              style: TextStyle(
                                color: Colors.blueAccent[700],
                                fontSize: 25,
                                fontWeight: FontWeight.w600
                              )
                            ),
                            backgroundColor: Colors.transparent,
                            radius: 75,
                          )
                        ),
          SizedBox(height: 20,),
          Padding(
               padding:EdgeInsets.only(top: 20,left: 20,bottom: 10),
               child: Row(
                 children: [
                   Text('DETAILS ABOUT THE CONTACT',
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
          Padding(padding: EdgeInsets.only(top: 20,left: 30, ),
            child: Text('NAME:',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                      fontWeight: FontWeight.w600
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
                    Icon(Icons.account_circle_outlined,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        contact.displayName.toString(),
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
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Text('CONTACT NO',
              style: TextStyle(
                color: Colors.blueGrey[200],
                fontSize: 20,
                fontWeight: FontWeight.w600
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
                    Icon(Icons.phone_android_outlined,color: Colors.blueAccent,),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        (contact.phones!.length > 0 ? contact.phones!.elementAt(0).value : '').toString(),
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
        ]
        )
      )
    );
  }
}



