import 'package:capstone/constant.dart';
import 'package:capstone/screens/budget/budget_screen.dart';
import 'package:capstone/screens/home/home_screen.dart';
import 'package:capstone/screens/invest/invest_screen.dart';
import 'package:capstone/screens/learn/learn_screen.dart';
import 'package:capstone/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  Nav({Key key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {

  int _selectedIndex = 2;
  List<Widget> _widgetOptions = <Widget>[
    Learn(),
    Invest(),
    Home(),
    Budget(),
    Profile(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('FinExpress'),
      //   backgroundColor: Colors.deepOrange[400],
      //   centerTitle: true,

      //   ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline,),
            label: "Learn",     
            backgroundColor: Colors.black87
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Invest',
            backgroundColor: Colors.black87
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black87
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined),
            label: 'Budget',
            backgroundColor: Colors.black87
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
            backgroundColor: Colors.black87
          ),          
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
      backgroundColor: kBackgroundColor,
      selectedItemColor: kActiveIconColor,
      //unselectedItemColor: kInactiveIconColor,
      type: BottomNavigationBarType.shifting,
      )
      ,
    );
  }
}