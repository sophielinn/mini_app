import 'package:flutter/material.dart';

class PreEventAnalysis extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PreEventAnalysisState();
  }
}

class PreEventAnalysisState extends State<PreEventAnalysis>{
  Widget build(BuildContext context){
    return Container(
      child: ListView(
        children: [
          ElevatedButton(
                child: Text('Get Data'),
                onPressed: (){

                }
            ),
            TextField(
                decoration: const InputDecoration(
                    hintText: 'Event Code'
                ),
          ) ,
        ],
      ),
    );
    }
}