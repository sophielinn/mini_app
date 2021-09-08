import 'package:flutter/material.dart';
import 'package:mustang_mini_app/models/teamdata.dart';

class OprDataCard extends StatelessWidget {
  final TeamData data;
  const OprDataCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data.teamCode,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(data.opr.toString())
          ],
        ),
      ),
    );
  }
}
