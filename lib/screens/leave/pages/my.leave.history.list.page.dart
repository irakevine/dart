import 'package:first_app/models/leave/my.leave.card.dart';
import 'package:first_app/widgets/leave/my.leave.history.widget.dart';
import 'package:flutter/material.dart';

class MyleaveHistoryPage extends StatelessWidget {
  const MyleaveHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: leaveHistoryData.length,
          itemBuilder: (context, index) {
            final data = leaveHistoryData[index];
            return MyleaveHistoriesWidget(leaveHistoryData: data);
          },
        ),
      ),
    );
  }
}
