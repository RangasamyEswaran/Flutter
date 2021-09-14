import 'package:cording/history/history.dart';
import 'package:cording/home/saidbar/addacount.dart';
import 'package:cording/home/saidbar/profile.dart';
import 'package:flutter/material.dart';

class Saidbar extends StatefulWidget {
  Saidbar({Key? key}) : super(key: key);

  @override
  _SaidbarState createState() => _SaidbarState();
}

class _SaidbarState extends State<Saidbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
         color: Colors.deepPurpleAccent[700],
         child: ListView(
           
           padding: EdgeInsets.symmetric(horizontal: 20),
           children: [
             
              SizedBox(
               height: 48,
             ),
             buildMenuIteam(
               text: 'Profile',
               icon: Icons.person,
               onclicked: () => selectedIteam(context, 0),
             ),
             buildMenuIteam(
               text: 'Transaction',
               icon: Icons.transfer_within_a_station_outlined,
               onclicked: () => selectedIteam(context, 1),
             ),
             buildMenuIteam(
               text: 'Add Account',
               icon: Icons.add_chart_outlined,
               onclicked: () => selectedIteam(context, 2),
             ),
             buildMenuIteam(
               text: 'About',
               icon: Icons.file_copy_outlined
             ),
             SizedBox(height: 20,),
             Divider(color: Colors.white70,),
             SizedBox(height: 20,),
             buildMenuIteam(
               text: 'Settings',
               icon: Icons.settings_outlined
             ),
             buildMenuIteam(
               text: 'Logout',
               icon: Icons.logout_outlined
             ),

           ],
         ),
      ),
    );
  }
}

Widget buildMenuIteam({
  required String text,
  required IconData icon,
  VoidCallback? onclicked
}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color,),
    title: Text(text, style: TextStyle(color: color),),
    hoverColor: hoverColor,
    onTap: onclicked,
  );
}

void selectedIteam(BuildContext context, int index) {
  switch (index) {
    case 0:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=> Profile()));
      break;
      case 1:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=> History()));
      break;
      case 2:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=> Addacount()));
      break;
      case 3:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=> Profile()));
      break;
      case 4:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=> Profile()));

      break;

  }
}
