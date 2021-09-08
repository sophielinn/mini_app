import 'package:flutter/material.dart';
import 'package:mustang_mini_app/components/opr-data.dart';
import 'package:mustang_mini_app/models/teamdata.dart';

class ViewData extends StatelessWidget {
  final List<TeamData> data;
  final String eventCode;
  const ViewData({Key? key, required this.data, required this.eventCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(eventCode)),
      body: data.length > 0
          ? ListView.builder(
              itemBuilder: ((context, index) => OprDataCard(
                    data: data[index],
                  )),
              itemCount: data.length,
            )
          : Center(
              child: Text(
                'Event Code is invalid',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
    );
  }
}
