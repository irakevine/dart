import 'package:first_app/widgets/leave/approval.cards.widget.dart';
import 'package:flutter/material.dart';

class MyApprovalListPage extends StatelessWidget {
  MyApprovalListPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> approvalData = [
    {
      'id': '1',
      'name': 'Sonu Nigam',
      'date': '15 days',
      'dateinfo': 'Tue, 22 Nov - Fri, 24 Nov',
      'leaveTypeName': 'Business leave'
    },
    {
      'id': '2',
      'name': 'nellen iarkoze',
      'date': '12 days',
      'dateinfo': 'Tue, 27 Nov - Fri, 30 Nov',
      'leaveTypeName': 'Annual Leave'
    },
    {
      'id': '3',
      'name': 'Sonu Nigam',
      'date': '18 days',
      'dateinfo': 'Tue, 22 Nov - Fri, 25 Nov',
      'leaveTypeName': 'Long-term sick'
    },
    {
      'id': '4',
      'name': 'Sonu Nigam',
      'date': '20 days',
      'dateinfo': 'Tue, 2 Nov - Fri, 20 Nov',
      'leaveTypeName': 'Short-term sick'
    },
    {
      'id': '5',
      'name': 'David Niwewe',
      'date': '15 days',
      'dateinfo': 'Tue, 10 Nov - Fri, 25 Nov',
      'leaveTypeName': 'Study leave'
    },
    {
      'id': '6',
      'name': 'Davilla Niwewe',
      'date': '4 days',
      'dateinfo': 'Tue, 16 Nov - Fri, 20 Nov',
      'leaveTypeName': 'Maternity leave'
    },
  ];

  get onPressed => null;

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
