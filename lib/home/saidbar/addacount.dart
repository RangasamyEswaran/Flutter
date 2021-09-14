import 'package:cording/cards.dart';
import 'package:flutter/material.dart';

class Addacount extends StatefulWidget {
  const Addacount({Key? key}) : super(key: key);

  @override
  _AddacountState createState() => _AddacountState();
}

class _AddacountState extends State<Addacount> {
  TextEditingController _card = TextEditingController();
  TextEditingController _date = TextEditingController();

  String? value;
  List<bool> isSelected=[true,false];

  final item = [
    'Master Card',
    'VISA Card',
    'Rupay Card'
  ];

      DropdownMenuItem<String>buildManuItem(String item) {
      return DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            color: Colors.blueAccent[700],
            fontSize: 20
          ),

        )
        );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        
        title: Text('Add your Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ListView(children: [
            Padding(
              padding: EdgeInsets.only(top: 20,left: 20, ),
              child: Text('Fill all Field',
            style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontSize: 20,
                    ),
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 30, bottom: 20),
              child: Text('Enter the 16 digit no of your card',
            style: TextStyle(
                      color: Colors.blueAccent[700],
                      fontSize: 20,
                    ),
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(onTap: () {},
              leading: Icon(Icons.credit_card_outlined,color: Colors.blueAccent[700],),
              title: Container(
                margin: EdgeInsets.only(right: 20),
                child: TextField(
                  decoration: InputDecoration(
              labelText: 'EX: **** **** **** ****',
              
              hintStyle: TextStyle(
                        color: Colors.blueAccent[700],
                      ),
              // fillColor: Colors.blueAccent,
                 ),
                  style: TextStyle(
                    color: Colors.blueAccent[700]
                  ),
                  controller: _card,
                  keyboardType: TextInputType.number,

                ),
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 30, bottom: 20),
              child: Text('Enter the card exp date',
            style: TextStyle(
                      color: Colors.blueAccent[700],
                      fontSize: 20,
                    ),
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(onTap: () {},
              leading: Icon(Icons.date_range_outlined,color: Colors.blueAccent[700],),
              title: Container(
                margin: EdgeInsets.only(right: 20),
                child: TextField(
                  decoration: InputDecoration(
              labelText: 'EX: mm/yyyy',
              
              hintStyle: TextStyle(
                        color: Colors.blueAccent[700],
                      ),
              // fillColor: Colors.blueAccent,
                 ),
                  
                  style: TextStyle(
                    color: Colors.blueAccent[700]
                  ),
                  controller: _date,
                  
                  keyboardType: TextInputType.datetime,

                ),
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 30, bottom: 20),
              child: Text('Your Card Published by',
            style: TextStyle(
                      color: Colors.blueAccent[700],
                      fontSize: 20,
                    ),
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey[50],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: DropdownButton<String>(
                  
                  isExpanded: true,
                  value: value,
                  hint: Text('Select Yours',
                  
                  style: TextStyle(
                    color: Colors.blueAccent
                  ),
                  ),
                  items: item.map(buildManuItem).toList(),
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 30, bottom: 20),
              child: Text('Select Your Card Type',
            style: TextStyle(
                      color: Colors.blueAccent[700],
                      fontSize: 20,
                    ),
            ),
            ),
            Container(
              
              margin: EdgeInsets.symmetric(horizontal: 30),
              
              child: ToggleButtons(
                renderBorder: false,
                selectedColor: Colors.white70,
                color: Colors.blue,
                fillColor: Colors.blueAccent[700],
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Text('Debite Card',
                  style: TextStyle(
                    fontSize: 20
                  ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Text('Cridit Card',
                  style: TextStyle(
                    fontSize: 20
                  ),
                  ),

                  )
                ], 
                onPressed: (int newIndex){
                  setState(() {
                    for(int index=0; index < isSelected.length; index++){
                      if(index==newIndex){
                        isSelected[index]=true;
                      }else{
                        isSelected[index]=false;
                      }
                    }
                  });
                },
                isSelected: isSelected),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 20,left: 30, bottom: 20),
            //   child: Text('Check All given Details are currect',
            // style: TextStyle(
            //           color: Colors.blueAccent[700],
            //           fontSize: 20,
            //         ),
            // ),
            // ),
            SizedBox(height: 30,),
            SizedBox(
              height: 50,
              child: InkWell(
                
                onTap: () {
                  
                },
                 // Handle your callback
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueAccent[700],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Next',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white70,
                      )
                    ],
                  )
                ),
                
              ),
            ),

          ],)
        ),
      ),
    );
  }

  
}