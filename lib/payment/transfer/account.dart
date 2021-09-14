import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20,left: 50, bottom: 10),
          child: Text('Enter Beneficiant Account no here',
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
          margin: EdgeInsets.only(left: 30, right: 20,),
          child: ListTile(
            onTap: () {},
            leading: Icon(Icons.account_box_outlined,color: Colors.blueAccent,), 
            title: Container(
               padding: const EdgeInsets.only(left: 10,bottom: 8),
              child: TextField(
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  
                ),
              )
        ),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blueAccent,))
          )
          
        ),
      ],
    );
  }
}