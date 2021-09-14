import 'package:contacts_service/contacts_service.dart';
import 'package:cording/payment/transfer/condetail.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Mobilecontact extends StatefulWidget {
  Mobilecontact({Key? key}) : super(key: key);

  @override
  _MobilecontactState createState() => _MobilecontactState();
}

class _MobilecontactState extends State<Mobilecontact> {

  List<Contact> contacts = [];

  @override
  void initState() {
    super.initState();
    // getAllContacts();
    checkpermission_contacts_service();
  }

  // getAllContacts() async{
  //   List<Contact> _contacts = (await ContactsService.getContacts(withThumbnails: true)).toList();

  //   setState(() {
  //     contacts = _contacts;
  //   });

  // }

  // ignore: non_constant_identifier_names
  checkpermission_contacts_service() async {
    if(await Permission.contacts.request().isGranted){
      List<Contact> _contacts = (await ContactsService.getContacts(withThumbnails: true)).toList();
      setState(() {
      contacts = _contacts;
    });
    }
    else{
      Fluttertoast.showToast(msg: "Give Allow access to contact",gravity: ToastGravity.CENTER,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
         child: ListView.builder(
           itemCount: contacts.length,
           itemBuilder: (context, index){
             Contact contact = contacts[index];
             return ListTile(
               onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contectdetails(contact: contacts[index],),));
               },
               title: Text(contacts[index].displayName.toString(),
               style: TextStyle(
                 color: Colors.blueAccent[700],
                 fontSize: 20,
                 fontWeight: FontWeight.w600
               ),
               ),
               subtitle: Text(
                 (contact.phones!.length > 0 ? contact.phones!.elementAt(0).value : '').toString(),
                 style: TextStyle(
                   color: Colors.blueAccent,
                   fontSize: 16
                 ),
               ),
               leading: (contact.avatar != null && contact.avatar!.length > 0) ?
                        CircleAvatar(
                          backgroundImage: MemoryImage(contact.avatar!),
                        ) :
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey
                          ),
                          child: CircleAvatar(
                            child: Text(
                              contact.initials(),
                              style: TextStyle(
                                color: Colors.blueAccent[700]
                              )
                            ),
                            backgroundColor: Colors.transparent
                          )
                        ),
             );
           }),
      ),
    );
  }
}