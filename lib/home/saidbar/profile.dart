import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text(
          'User Profile'
        ),
      ),
      body: Container(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 20, top: 50),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile/1.png'),
                radius: 55,
                
              )
              ),
            ],
          ),
          
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            height: 50,
            width: 345,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: Text('Name:',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),)
                ),
                Positioned(
                  left: 80,
                  top: 10,
                  child: Text(
                    'Rangasamy',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    fontSize: 20
                    ),
                  )
                )
                  
              ],
            )
            ),
            
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            height: 50,
            width: 345,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: Text('Number of Account:',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),)
                ),
                Positioned(
                  left: 180,
                  top: 10,
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    fontSize: 20
                    ),
                  )
                )
                  
              ],
            )
            ),
            Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            height: 50,
            width: 345,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: Text('cuntry:',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),)
                ),
                Positioned(
                  left: 80,
                  top: 10,
                  child: Text(
                    'India',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    fontSize: 20
                    ),
                  )
                )
                  
              ],
            )
            ),
          
          
        ],),
      ),
    );
  }
}