import 'package:first_app/utils/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyLeaveCardWidget extends StatefulWidget {
  final Map<String, dynamic> leaveType;

  const MyLeaveCardWidget({Key? key, required this.leaveType})
      : super(key: key);

  @override
  State<MyLeaveCardWidget> createState() => _MyLeaveCardWidgetState();
}

class _MyLeaveCardWidgetState extends State<MyLeaveCardWidget> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(widget.leaveType);
    }
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      decoration: BoxDecoration(
          color: leaveCardTypeContainerBg(widget.leaveType['name'].toString()),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: const Color.fromARGB(255, 220, 220, 220), width: 1.0)),
      width: MediaQuery.of(context).size.width / 2,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: getLeaveTypeIconContainerBg(widget
                          .leaveType['name']
                          .toString()), // Set the color here
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    height: 40,
                    width: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(image: AssetImage(widget.leaveType['icon'])),
                    ),
                  )
                ],
              ),
            ),
            Text(
              widget.leaveType['name'],
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF465674)),
            ),
            Row(
              children: [
                Text(
                  widget.leaveType['date'],
                  style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF465674)),
                ),
                InkWell(
                  onTap: () {
                    print('hello');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Container(
                      width: 15, // Set the desired width of the circle
                      height: 30, // Set the desired height of the circle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(
                              0xFFC8CDD8), // Set the border color, // Set the border color here
                          width: 2.0, // Set the desired border width
                        ),
                      ),
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors
                              .transparent, // Set the background color to transparent
                          shape: CircleBorder(),
                        ),
                        child: Icon(
                          Icons.info,
                          color: Color(0xFFC8CDD8),
                          size: 12, // Set the desired size of the Icon
                        ),
                      ),
                    ),
                  ),
                ), //
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 3, bottom: 5), // Set top and bottom margin
              child: ElevatedButton(
                onPressed: () {
                  // Handle button tap here (same as GestureDetector)
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Set border radius
                  ),
                  minimumSize: const Size(
                      134, 26), // Set the width and height of the button
                  padding: const EdgeInsets.symmetric(
                    horizontal: 27.128,
                    vertical: 1.2,
                  ), // Set padding
                  alignment: Alignment.center, // Center content
                ),
                child: const Text(
                  'Request',
                  style: TextStyle(
                    color: Color(0xFF465674),
                    // Button text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
