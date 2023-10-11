import 'package:first_app/models/leave/my.leave.card.dart';
import 'package:first_app/widgets/leave/approval.cards.widget.dart';
import 'package:flutter/material.dart';

class MyApprovalListPage extends StatelessWidget {
  const MyApprovalListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: approvalData.length,
          itemBuilder: (context, index) {
            final data = approvalData[index];
            // ignore: sized_box_for_whitespace
            return ApprovalCardWidget(leaveApproval: data);
          },
        ),
      ),
    );
  }
}
