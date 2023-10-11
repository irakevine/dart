import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: public_member_api_docs

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ));

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 240,
                child: PageView.builder(
                  controller: controller,
                  itemCount: cards.length,
                  itemBuilder: (_, index) {
                    final card = cards[index];

                    return Padding(
                      // padding: const EdgeInsets.all(8.0)
                      padding: EdgeInsets.fromLTRB(20, 8, 1, 8),
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
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: getColorFromString(card['name']),
                                  shape: BoxShape.circle,
                                ),
                                child: Image(
                                  image: AssetImage(card['icon']),
                                  width: 34,
                                  height: 64,
                                ),
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
                                  Row(
                                    children: [
                                      Text(
                                        card['date'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print('hello');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: const Color(
                                                  0xFFC8CDD8), // Set the border color here
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.info,
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ), // Replace this with your desired icon
                                    ],
                                  )
                                ],
                              ),
                              // Card expiry date
                              // Text(card['date']),
// Button
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 3,
                                    bottom: 5), // Set top and bottom margin
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
                                      color: Colors.black,
                                      // Button text color
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                    ;
                  },
                ),
              ),

              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 20,
                    dotColor: Colors.red,
                    activeDotColor: Colors.green
                    // type: WormType.thinUnderground,
                    ),
              ),
              //
              // Padding(
              //   padding: const EdgeInsets.only(top: 16, bottom: 8),
              //   child: Text(
              //     'Jumping Dot',
              //     style: TextStyle(color: Colors.black54),
              //   ),
              // ),
              // Container(
              //   child: SmoothPageIndicator(
              //     controller: controller,
              //     count: pages.length,
              //     effect: JumpingDotEffect(
              //       dotHeight: 16,
              //       dotWidth: 16,
              //       jumpScale: .7,
              //       verticalOffset: 15,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 16, bottom: 12),
              //   child: Text(
              //     'Scrolling Dots',
              //     style: TextStyle(color: Colors.black54),
              //   ),
              // ),
              // SmoothPageIndicator(
              //     controller: controller,
              //     count: pages.length,
              //     effect: ScrollingDotsEffect(
              //       activeStrokeWidth: 2.6,
              //       activeDotScale: 1.3,
              //       maxVisibleDots: 5,
              //       radius: 8,
              //       spacing: 10,
              //       dotHeight: 12,
              //       dotWidth: 12,
              //     )),
              // Padding(
              //   padding: const EdgeInsets.only(top: 16, bottom: 16),
              //   child: Text(
              //     'Customizable Effect',
              //     style: TextStyle(color: Colors.black54),
              //   ),
              // ),
              // Container(
              //   // color: Colors.red.withOpacity(.4),
              //   child: SmoothPageIndicator(
              //     controller: controller,
              //     count: pages.length,
              //     effect: CustomizableEffect(
              //       activeDotDecoration: DotDecoration(
              //         width: 32,
              //         height: 12,
              //         color: Colors.indigo,
              //         rotationAngle: 180,
              //         verticalOffset: -10,
              //         borderRadius: BorderRadius.circular(24),
              //         // dotBorder: DotBorder(
              //         //   padding: 2,
              //         //   width: 2,
              //         //   color: Colors.indigo,
              //         // ),
              //       ),
              //       dotDecoration: DotDecoration(
              //         width: 24,
              //         height: 12,
              //         color: Colors.grey,
              //         // dotBorder: DotBorder(
              //         //   padding: 2,
              //         //   width: 2,
              //         //   color: Colors.grey,
              //         // ),
              //         // borderRadius: BorderRadius.only(
              //         //     topLeft: Radius.circular(2),
              //         //     topRight: Radius.circular(16),
              //         //     bottomLeft: Radius.circular(16),
              //         //     bottomRight: Radius.circular(2)),
              //         borderRadius: BorderRadius.circular(16),
              //         verticalOffset: 0,
              //       ),
              //       spacing: 6.0,
              //       // activeColorOverride: (i) => colors[i],
              //       inActiveColorOverride: (i) => colors[i],
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}

Color getColorFromString(String colorName) {
  // Remove spaces and convert to lowercase
  String cleanedColorName = colorName.replaceAll(' ', '').toLowerCase();

  switch (cleanedColorName) {
    case 'businessleave':
      return const Color(0xFFFFD3C0);
    case 'annualleave':
      return const Color(0xFFC9E0FF);
    case 'long-termsick':
      return const Color(0xFFBCF8FF);
    case 'short-termsick':
      return const Color(0xFFFFE3AE);
    case 'studyleave':
      return const Color(0xFFCAF6D2);
    case 'maternityleave':
      return const Color(0xFFF4BEF8);
    // Add more color cases as needed
    default:
      return Colors.grey; // Default color for unknown names
  }
}
