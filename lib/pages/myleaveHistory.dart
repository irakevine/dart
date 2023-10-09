import 'package:flutter/material.dart';

class MyleaveHistory extends StatelessWidget {
  MyleaveHistory({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> leaveHistoryData = [
    {
      'id': '1',
      'date': '15 days',
      'status': 'Pending',
      'dateinfo': 'Tue, 22 Nov - Fri, 24 Nov',
      'leaveTypeName': 'Business leave'
    },
    {
      'id': '2',
      'date': '12 days',
      'status': 'Approved',
      'dateinfo': 'Tue, 27 Nov - Fri, 30 Nov',
      'leaveTypeName': 'Annual Leave'
    },
    {
      'id': '3',
      'date': '18 days',
      'status': 'Declined',
      'dateinfo': 'Tue, 22 Nov - Fri, 25 Nov',
      'leaveTypeName': 'Long-term sick'
    },
    {
      'id': '4',
      'date': '20 days',
      'status': 'Approved',
      'dateinfo': 'Tue, 2 Nov - Fri, 20 Nov',
      'leaveTypeName': 'Short-term sick'
    },
    {
      'id': '5',
      'date': '15 days',
      'status': 'Pending',
      'dateinfo': 'Tue, 10 Nov - Fri, 25 Nov',
      'leaveTypeName': 'Study leave'
    },
    {
      'id': '6',
      'date': '4 days',
      'status': 'Declined',
      'dateinfo': 'Tue, 16 Nov - Fri, 20 Nov',
      'leaveTypeName': 'Maternity leave'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: leaveHistoryData.length,
        itemBuilder: (context, index) {
          final data = leaveHistoryData[index];
          return Container(
            width: 300,
            height: 100,
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
                    subtitle: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <InlineSpan>[
                          TextSpan(
                            text: data['date'],
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8893AA),
                            ),
                          ),
                          WidgetSpan(
                            child: SizedBox(
                                width: 180.0), // Adjust width as needed
                          ),
                          TextSpan(
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                child: Container(
                                  padding: EdgeInsets.all(
                                      4.0), // Adjust padding as needed
                                  decoration: BoxDecoration(
                                    color: getBgColorFromStringStatus(data[
                                        'status']), // Your background color here
                                    borderRadius: BorderRadius.circular(
                                        4.0), // Optional: Add rounded corners
                                  ),
                                  child: Text(
                                    data['status'],
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Text color on the background
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextSpan(
                            text: '\n${data['dateinfo']}\n',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6B7A99),
                            ),
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
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: SizedBox(
                                width:
                                    180.0), // Adjust the width as needed for spacing
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Icon(
                              Icons.arrow_forward,
                              // color: Colors
                              //     .transparent, // Set your desired color here
                            ),
                          ),
                        ],
                      ),
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

Color getBgColorFromStringStatus(String colorName) {
  String cleanedColorName = colorName.replaceAll(' ', '').toLowerCase();

  switch (cleanedColorName) {
    case 'approved':
      return const Color(0xFF25BA34);
    case 'declined':
      return const Color(0xFFE62E2E);
    case 'pending':
      return const Color(0xFF2DB8B8);

    default:
      return Colors.grey;
  }
}
