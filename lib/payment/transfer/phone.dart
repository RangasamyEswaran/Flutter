import 'package:cording/payment/transfer/phonetran.dart';
import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20,left: 50, bottom: 10),
              child: Text('Enter Beneficiant Phone no here',
            style: TextStyle(
                      color: Colors.blueAccent[700],
                      fontSize: 20,
                    ),
            ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300]
              ),
              margin: EdgeInsets.only(left: 30, right: 20),
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.phone_android_outlined,color: Colors.blueAccent,), 
                title: Container(
                   padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20
                    ),
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      
                    ),
                  )
              ),
      trailing: IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Transsaction(),));
      }, icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blueAccent,))
              ),
            ),
          ],
        )
      ),
    );
  }
}