import 'package:carousel_slider/carousel_slider.dart';
import 'package:cording/cards.dart';
import 'package:cording/home/saidbar.dart';
import 'package:cording/transaction/transation.dart';
import 'package:cording/transferdetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  
  HomePage({Key? key, }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//   scureScreen() async{
//     await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
//   }
// @override
// void initState(){
//   super.initState();
//   scureScreen();
// }
  

  List imgList = [
    'assets/images/4.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/5.jpg',
  ];




  int current = 0;


  List<T> map<T>(List list,Function handler){
    List<T> result = [];
    for(var i=0; i<list.length; i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }


  String greetingMessage(){

  var timeNow = DateTime.now().hour;
  
  if (timeNow < 12) {
    return 'Good Morning';
  } else if ((timeNow >= 12) && (timeNow < 16)) {
  return 'Good Afternoon';
  } else if ((timeNow >= 16) && (timeNow < 20)) {
  return 'Good Evening';
  } else {
  return 'Good Night';
  }
}
  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => FocusScope.of(context).unfocus(),
    child: Scaffold(
      
        drawer: Saidbar(),
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[700],
          title: Container(
            decoration: BoxDecoration(            
              color: Color.fromARGB(50, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(50.0))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1, 
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'search',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        
                      ),
                      ),
                  ),
                ),
                Expanded(
                  flex: 0, 
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.white, size: 30,)
                  ),
                ),
                
                
              ],
              
            ),
            
          ),
          actions: [
            IconButton(
            
            onPressed: () {},
            icon: Icon(Icons.notifications)
          ),
          ],
          
          
        
          ),
        
        body: Container(
          
          margin: EdgeInsets.only(top: 8),
           child: ListView(
             
             physics: ClampingScrollPhysics(),
             children: [
              
               
               SizedBox(height: 20,),
               Padding(padding: EdgeInsets.only(left: 20, bottom: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("${greetingMessage()}", style: GoogleFonts.inter(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black
                   ),),
                   Text('Rangasamy', style: GoogleFonts.inter(
                     fontSize: 30,
                     fontWeight: FontWeight.w700,
                     color: Colors.black
                   ),)
                 ],
               ),
               
               ),
               
               AnimatedContainer(
                 
                 height: 200,
                 
                 
                 duration: const Duration(seconds: 4),
                  curve: Curves.fastOutSlowIn,
                 child: CarouselSlider.builder(
                   options: CarouselOptions(
                     autoPlay: true,
                     enlargeCenterPage: true,
                     autoPlayCurve: Curves.fastOutSlowIn,
                     autoPlayAnimationDuration: Duration(milliseconds: 800),
                     viewportFraction: 0.8,
                     initialPage: 0,
                     onPageChanged: (index, reason) {
                      setState(() {
                       current = index; 
                       }); 
                     },
                   ),
                   itemCount: cards.length,
                   itemBuilder: (context, index, realIndex){
                     return Container(
                       
                       margin: EdgeInsets.only(right: 10),
                       height: 200,
                       width: 345,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(28),
                                 
                       image: DecorationImage(
                         image: AssetImage(cards[index].cardBackground),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.7), BlendMode.dstATop)
                        )
                       ),
                       child: Stack(children: [
                         Positioned(
                           top: 29,
                           left: 40,
                           child: Text(cards[index].user,style: GoogleFonts.inter(
                             fontSize: 25,
                             fontWeight: FontWeight.w700,
                             color: Colors.white
                           ),)
                          ),
                          Positioned(
                            top: 79,
                            left: 40,
                            child: Text(cards[index].cardNumber,style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),)
                            ),
                            Positioned(
                              top: 29,
                              right: 21,
                              child: Image.asset(cards[index].cardType,width: 60,height: 60,)
                            ),
                            Positioned(
                              left: 40,
                              bottom: 40,
                              child: Text(cards[index].cardExpired,
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                              )
                              ),
                              Positioned(
                                bottom: 40,
                                right: 40,
                                child: Row(
                                  children: [
                                    Image.asset(cards[index].cardcurrency, height: 27, width: 27, color: Colors.white,),
                                    Text(cards[index].cardBalance,style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                    ),),
                                  ],
                                )
                                )
                       ],),
                     );
                   }
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(top: 29, left: 16,bottom: 13,right: 8),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: map(
                     cards,
                     (index, realIndex){
                       return Container(
                         alignment: Alignment.centerLeft,
                         height: 9,
                         width: 9,
                         margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: current == index ? Colors.deepPurpleAccent[700] : Colors.blueGrey[200],
                         ),
                       );
                     }
                   )
                 ),
               ),
                Padding(padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Column(
                       
                       children: [
                         IconButton(
                           onPressed: () {},
                           icon: Icon(Icons.input_outlined,color: Colors.deepPurpleAccent[700],),),
                           Text('SEND PAY',
                           style: TextStyle(
                             color: Colors.blueAccent[700]
                           ),
                           )
                       ],
                     ),
                     Column(
                       
                       children: [
                         IconButton(
                           onPressed: () {},
                           icon: Icon(Icons.bookmarks_outlined,color: Colors.deepPurpleAccent[700],),),
                           Text('TEMPLATES',
                           style: TextStyle(
                             color: Colors.blueAccent[700]
                           ),
                           )
                       ],
                     ),
                     Column(
                       
                       children: [
                         IconButton(
                           onPressed: () {},
                           icon: Icon(Icons.card_giftcard_outlined,color: Colors.deepPurpleAccent[700],),),
                           Text('TOP UP',
                           style: TextStyle(
                             color: Colors.blueAccent[700]
                           ),
                           )
                       ],
                     ),
                     Column(
                       
                       children: [
                         IconButton(
                           onPressed: () {},
                           icon: Icon(Icons.downloading_outlined,color: Colors.deepPurpleAccent[700],),),
                           Text('REQUESRT',
                           style: TextStyle(
                             color: Colors.blueAccent[700]
                           ),
                           )
                       ],
                     )
                   ],
                 ),
               ),
               ),
               
               Padding(
                 padding:EdgeInsets.only(top: 20,left: 30,bottom: 10),
                 child: Row(
                   children: [
                     Text('RESENT TRANSACTION',
                     style: TextStyle(
                              color: Colors.blueGrey[200],
                              fontSize: 20,
                            ),)
                   ],
                 ), 
               ),
               
               ListView.builder(
                 itemCount: 4,
                 shrinkWrap: true,
                 physics: BouncingScrollPhysics(),
                 
                 itemBuilder: (context, index) {
                 
                   return InkWell(
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Trensactiondetails(tranceModel: transation[index],),));
                     },
                     child: Container(
                       height: 65,
                       margin: EdgeInsets.only(bottom: 10, left: 10,right: 10,top: 10),
                       decoration: BoxDecoration(
                         color: Colors.white70,
                         borderRadius: BorderRadius.circular(15),
                         
                         
                       ),
                       child: Stack(
                         children: [
                           Positioned(
                             top: 10,
                             child: 
                             Image.asset(transation[index].trnceIcon, color: Colors.blue, height: 30, width: 30,)
                             ),
                            Positioned(
                              left: 45,
                              child: Text(transation[index].tranceName,style: 
                              TextStyle(
                                fontSize: 25,
                                color: Colors.blue,
                              ),
                              )
                              ),
                              Positioned(
                              
                              left: 45,
                              bottom: 10,
                              child: Text(transation[index].tranceDeatails,style: 
                              TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                              )
                              ),
                              Positioned(
                              
                              left: 200,
                              top: 10,
                              child: Text(transation[index].tranceAmount,style: 
                              TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                              )
                              ),
                              Positioned(
                              
                              left: 200,
                              bottom: 10,
                              child: Text(transation[index].tranceDate,style: 
                              TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                              )
                              )
                         ]
                       )
                     ),
                   );    
                 },
               ),
               Padding(
                 padding:EdgeInsets.only(top: 20,left: 30,bottom: 10),
                 child: Row(
                   children: [
                     Text('OFFERS FOR YOU',
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
               Scrollsaid(),
               SizedBox(
                 height: 10,
               ),
               Padding(
                 padding:EdgeInsets.only(top: 20,left: 30,bottom: 10),
                 child: Row(
                   children: [
                     Text('PRODUCTS',
                     style: TextStyle(
                              color: Colors.blueGrey[200],
                              fontSize: 20,
                            ),)
                   ],
                 ), 
               ),
               SizedBox(height: 10,),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {},
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
                          top: 20,
                          left: 20,
                          child: Icon(Icons.credit_card,color: Colors.blueAccent, size: 30,)),
                          Positioned(
                            left: 60,
                            top: 15,
                            child: Text('Apply new Debit card',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          Positioned(
                            left: 60,
                            bottom: 15,
                            child: Text('Fill the form and get the card within 5 days',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          
                      ],
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {},
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
                          top: 20,
                          left: 20,
                          child: Icon(Icons.credit_card,color: Colors.blueAccent, size: 30,)),
                          Positioned(
                            left: 60,
                            top: 15,
                            child: Text('Apply new credit card',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          Positioned(
                            left: 60,
                            bottom: 15,
                            child: Text('Use cash 30 days without interest',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          
                      ],
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {},
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
                          top: 20,
                          left: 20,
                          child: Icon(Icons.euro_symbol_outlined,color: Colors.blueAccent, size: 30,)),
                          Positioned(
                            left: 60,
                            top: 25,
                            child: Text('Apply new currency account',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          
                          
                      ],
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {},
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
                          top: 20,
                          left: 20,
                          child: Icon(Icons.work_outline_outlined,color: Colors.blueAccent, size: 30,)),
                          Positioned(
                            left: 60,
                            top: 20,
                            child: Text('Apply new loan',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          Positioned(
                            left: 60,
                            bottom: 15,
                            child: Text('consumer loan from 2.9%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          
                          
                      ],
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 50,
                child: InkWell(
                  
                  onTap: () {},
                   // Handle your callback
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[350],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Show More',
                        style: TextStyle(
                          color: Colors.blueAccent[700],
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.blueAccent[700],
                        )
                      ],
                    )
                  ),
                  
                ),
              ),
              Padding(
                 padding:EdgeInsets.only(top: 20,left: 30,bottom: 10),
                 child: Row(
                   children: [
                     Text('INFORMATION',
                     style: TextStyle(
                              color: Colors.blueGrey[200],
                              fontSize: 20,
                            ),)
                   ],
                 ), 
               ),
               SizedBox(height: 10,),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {},
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
                          top: 20,
                          left: 20,
                          child: Icon(Icons.swap_horiz_outlined,color: Colors.blueAccent, size: 30,)),
                          Positioned(
                            left: 60,
                            top: 25,
                            child: Text('Exchange rate',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          
                          
                      ],
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {},
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
                          top: 20,
                          left: 20,
                          child: Icon(Icons.bar_chart_outlined,color: Colors.blueAccent, size: 30,)),
                          Positioned(
                            left: 60,
                            top: 25,
                            child: Text('My Statistic',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          
                          
                      ],
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {},
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
                          top: 20,
                          left: 20,
                          child: Icon(Icons.map_outlined,color: Colors.blueAccent, size: 30,)),
                          Positioned(
                            left: 60,
                            top: 20,
                            child: Text('On the map',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          Positioned(
                            left: 60,
                            bottom: 15,
                            child: Text('Show Bank branches on the map',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          
                          
                      ],
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 75,
                child: InkWell(
                  
                  onTap: () {},
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
                          top: 20,
                          left: 20,
                          child: Icon(Icons.chat_outlined,color: Colors.blueAccent, size: 30,)),
                          Positioned(
                            left: 60,
                            top: 25,
                            child: Text('Contact us',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent
                            ),
                            )
                          ),
                          
                          
                      ],
                    )
                  ),
                  
                ),
              ),
              SizedBox(
                height: 10,
              )
  
           ],
           ),
        ),
      ),
  );
  }


  class Scrollsaid extends StatelessWidget {
    const Scrollsaid({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          
          child: FittedBox(
            fit: BoxFit.fill,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage('assets/background/1.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(Colors.blueAccent.withOpacity(0.2), BlendMode.dstATop)
                    )
                  ),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){},
                      icon: Icon(Icons.card_giftcard_outlined,color: Colors.white,size: 25,),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Get the new family card position',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage('assets/background/2.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.2), BlendMode.dstATop)
                    )
                  ),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){},
                      icon: Icon(Icons.credit_card,color: Colors.white,size: 25,),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Credit card with 0% for 30 days',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage('assets/background/2.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.2), BlendMode.dstATop)
                    )
                  ),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){},
                      icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 25,),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Get 10% offer for shopping',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }