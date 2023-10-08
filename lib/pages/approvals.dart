import 'package:flutter/material.dart';

class MyApprovalList extends StatelessWidget {
  MyApprovalList({Key? key}) : super(key: key);

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
      'name': 'David Niwewe',
      'date': '4 days',
      'dateinfo': 'Tue, 16 Nov - Fri, 20 Nov',
      'leaveTypeName': 'Maternity leave'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: approvalData.length,
      itemBuilder: (context, index) {
        final data = approvalData[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.album, size: 60),
                title: Text(
                  data['name'],
                  style: TextStyle(fontSize: 20.0),
                ),
                subtitle: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: data['date'],
                        style: TextStyle(fontSize: 18.0),
                      ),
                      TextSpan(
                        text: '\n${data['dateinfo']}\n${data['leaveTypeName']}',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0), // Add some padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0), // Button padding
                      ),
                      onPressed: () {
                        // Your Accept button action here
                      },
                      child: Text('Accept'),
                    ),
                    SizedBox(width: 16.0), // Add some spacing between buttons
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0), // Button padding
                      ),
                      onPressed: () {
                        // Your Cancel button action here
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
