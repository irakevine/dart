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
      'name': 'Davilla Niwewe',
      'date': '4 days',
      'dateinfo': 'Tue, 16 Nov - Fri, 20 Nov',
      'leaveTypeName': 'Maternity leave'
    },
  ];

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: approvalData.length,
        itemBuilder: (context, index) {
          final data = approvalData[index];
          return Container(
            width: 300,
            height: 170,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white70,
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                            'your_image_path_here'), // Replace with your image asset
                      ),
                    ),
                    title: Text(
                      data['name'],
                      style: TextStyle(
                        fontSize: 14.0,
                        height: 2.3,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF8893AA),
                      ),
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: data['date'],
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF8893AA)),
                          ),
                          TextSpan(
                            text: '\n${data['dateinfo']}\n',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF6B7A99)),
                          ),
                          TextSpan(
                            text: data['leaveTypeName'],
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                              height: 1.0,
                              color: getColorFromString(data['leaveTypeName']),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0) + EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: onPressed,
                          child: const Text('Accept'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFF7133),
                            ), // Background color
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white), // Text color
                          ),
                        ),
                        SizedBox(width: 8.0),
                        OutlinedButton(
                          onPressed: onPressed,
                          child: const Text('Cancel'),
                          style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                  width: 2,
                                  color: const Color(0xFFFF7133)), // Border
                            ),
                            foregroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFF7133), // Text color
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Color getColorFromString(String colorName) {
    String cleanedColorName = colorName.replaceAll(' ', '').toLowerCase();

    switch (cleanedColorName) {
      case 'businessleave':
        return const Color(0xFFFF7133);
      case 'annualleave':
        return const Color(0xFF338FFF);
      case 'long-termsick':
        return const Color(0xFF2DB8B8);
      case 'short-termsick':
        return const Color(0xFFFFB833);
      case 'studyleave':
        return const Color(0xFF17701F);
      case 'maternityleave':
        return const Color(0xFFEE33FF);
      case 'Circumstantialleave':
        return const Color(0xFFFE993C);
      case 'Miscellaneousleave':
        return const Color(0xFF73E5F4);
      case 'Traveldayleave':
        return const Color(0xFFF4577B);
      case 'Workfromhomeleave':
        return const Color(0xFF9747FF);
      case 'Compassionateleave':
        return const Color(0xFFF56284);
      default:
        return Colors.grey;
    }
  }
}
