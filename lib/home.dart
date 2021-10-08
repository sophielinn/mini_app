import 'package:flutter/material.dart';

import 'PreEventAnalysis.dart';

class Home extends StatefulWidget{
    
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}
    class HomeState extends State<Home>{
      List<Widget> _pages = [PreEventAnalysis()];
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
         });
    }
     Widget build(BuildContext context){
        return Scaffold(
         appBar: AppBar(
        title: const Text('Mustang Mini App'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart),
            label: 'Pre Event Analysis',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Scouting',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
  
}