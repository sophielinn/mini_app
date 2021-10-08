import 'package:flutter/material.dart';

import 'home.dart';

void main(){
    runApp(MyApp());
}
class MyApp extends StatelessWidget {
    Widget build(BuildContext context){
        return MaterialApp(
             theme: ThemeData.dark(),
             home: Home()
        );
    }
    
}