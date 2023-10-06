import 'package:flutter/material.dart';

class MyleaveHistory extends StatefulWidget {
  const MyleaveHistory({Key? key}) : super(key: key);

  @override
  State<MyleaveHistory> createState() => _MyleaveHistoryState();
}

class _MyleaveHistoryState extends State<MyleaveHistory> {
  List<Map<String, dynamic>> cards = [
    {
      'id': 1,
      'icon': 'assets/images/Business_leave.png',
      'name': 'Business leave',
      'date': '15 days',
      'color': Color(0xFFFDF1EC),
    },
    {
      'id': 2,
      'icon': 'assets/images/annual_leave.png',
      'name': 'Annual Leave',
      'date': '10 days',
      'color': Color(0xFFE0EDFF),
    },
    {
      'id': 3,
      'icon': 'assets/images/Long-term_sick.png',
      'name': 'Long-term sick',
      'date': '10 days',
      'color': Color(0xFFDFFBFE),
    },
    {
      'id': 4,
      'icon': 'assets/images/Short-term_sick.png',
      'name': 'Short-term sick',
      'date': '10 days',
      'color': Color(0xFFFFF4E0),
    },
    {
      'id': 5,
      'icon': 'assets/images/Study_leave.png',
      'name': 'Study leave',
      'date': '10 days',
      'color': Color(0xFFECFDEF),
    },
    {
      'id': 6,
      'icon': 'assets/images/Maternity _leave.png',
      'name': 'Maternity  leave',
      'date': '10 days',
      'color': Color(0xFFFCE0FF),
    },
    // {
    //   'id': 6,
    //   'icon': images.calendar_today,
    //   'name': 'Maternity  leave',
    //   'date': '10 days',
    //   'color': Color(0xFFE0EDFF),
    // },
    // {
    //   'id': 6,
    //   'icon': images.calendar_today,
    //   'name': 'Maternity  leave',
    //   'date': '10 days',
    //   'color': Color(0xFFE0EDFF),
    // },
    // {
    //   'id': 6,
    //   'icon': images.calendar_today,
    //   'name': 'Maternity  leave',
    //   'date': '10 days',
    //   'color': Color(0xFFE0EDFF),
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: cards.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final card = cards[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Handle button tap here
                // You can navigate to a new screen, show a dialog, etc.
                // For now, we'll just print a message
                print('Button tapped for card ${card['name']}');
              },
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  color: card['color'],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage(card['icon']),
                      width: 34, // Set the image width
                      height: 64, // Set the image height
                    ),
                    // Card info
                    Text(card['name']),
                    // Card expiry date
                    Text(card['date']),
                    // Button
                    Container(
                      margin: EdgeInsets.only(
                          top: 10, bottom: 8), // Set top and bottom margin
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button tap here (same as GestureDetector)
                          print('Button tapped for card ${card['name']}');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8.0), // Set border radius
                          ),
                          minimumSize: Size(134,
                              26), // Set the width and height of the button
                          padding: EdgeInsets.symmetric(
                            horizontal: 27.128,
                            vertical: 1.2,
                          ), // Set padding
                          alignment: Alignment.center, // Center content
                        ),
                        child: Text(
                          'Request',
                          style: TextStyle(
                            color: Colors.black, // Button text color
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
