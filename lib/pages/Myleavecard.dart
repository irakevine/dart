import 'package:first_app/pages/myleaveHistory.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, dynamic>> cards = [
    {
      'id': 1,
      'icon': 'assets/images/Business_leave.png',
      'name': 'Business leave',
      'date': '15 days',
      'color': const Color(0xFFFDF1EC),
    },
    {
      'id': 2,
      'icon': 'assets/images/annual_leave.png',
      'name': 'Annual Leave',
      'date': '10 days',
      'color': const Color(0xFFE0EDFF),
    },
    {
      'id': 3,
      'icon': 'assets/images/Long-term_sick.png',
      'name': 'Long-term sick',
      'date': '10 days',
      'color': const Color(0xFFDFFBFE),
    },
    {
      'id': 4,
      'icon': 'assets/images/Short-term_sick.png',
      'name': 'Short-term sick',
      'date': '10 days',
      'color': const Color(0xFFFFF4E0),
    },
    {
      'id': 5,
      'icon': 'assets/images/Study_leave.png',
      'name': 'Study leave',
      'date': '10 days',
      'color': const Color(0xFFECFDEF),
    },
    {
      'id': 6,
      'icon': 'assets/images/Maternity _leave.png',
      'name': 'Maternity  leave',
      'date': '10 days',
      'color': const Color(0xFFFCE0FF),
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
    return Scaffold(
      appBar: AppBar(title: const Text('Leave')),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: const [
                    Text(
                      'My leave',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: cards.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final card = cards[index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          print('Button tapped for card ${card['name']}');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: card['color'],
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image(
                                image: AssetImage(card['icon']),
                                width: 34,
                                height: 64,
                              ),
                              // Card info
                              // Text(card['name']),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Align name and date to the left
                                children: [
                                  Text(
                                    card['name'],
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text(
                                    card['date'],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Icon(Icons.info)
                                ],
                              ),
                              // Card expiry date
                              // Text(card['date']),
// Button
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 1,
                                    bottom: 8), // Set top and bottom margin
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle button tap here (same as GestureDetector)
                                    print(
                                        'Button tapped for card ${card['name']}');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        Colors.white, // Button background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Set border radius
                                    ),
                                    minimumSize: const Size(134,
                                        26), // Set the width and height of the button
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 27.128,
                                      vertical: 1.2,
                                    ), // Set padding
                                    alignment:
                                        Alignment.center, // Center content
                                  ),
                                  child: const Text(
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: const [
                    Text(
                      'My leave history',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: MyleaveHistory(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
