import 'package:flutter/material.dart';

import '../../utils/index.dart';

class MyleaveHistoriesWidget extends StatefulWidget {
  final Map<String, dynamic> leaveHistoryData;
  const MyleaveHistoriesWidget({super.key, required this.leaveHistoryData});

  @override
  State<MyleaveHistoriesWidget> createState() => _MyleaveHistoriesWidgetState();
}

class _MyleaveHistoriesWidgetState extends State<MyleaveHistoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: const Color.fromARGB(255, 220, 220, 220), width: 1.0)),
      width: 300,
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 0.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              subtitle: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <InlineSpan>[
                    TextSpan(
                      text: widget.leaveHistoryData['date'],
                      style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8893AA),
                      ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(width: 160.0), // Adjust width as needed
                    ),
                    TextSpan(
                      style: const TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <InlineSpan>[
                        WidgetSpan(
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 4, right: 15, bottom: 4, left: 15),
                            // Adjust padding as needed
                            decoration: BoxDecoration(
                              color: getBgColorFromStringStatus(
                                  widget.leaveHistoryData[
                                      'status']), // Your background color here
                              borderRadius: BorderRadius.circular(
                                  8.0), // Optional: Add rounded corners
                            ),
                            child: Text(
                              widget.leaveHistoryData['status'],
                              style: const TextStyle(
                                color: Colors.white,

                                // Text color on the background
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextSpan(
                      text: '\n${widget.leaveHistoryData['dateinfo']}\n',
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6B7A99),
                      ),
                    ),
                    TextSpan(
                      text: widget.leaveHistoryData['leaveTypeName'],
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                        color: getColorFromString(
                            widget.leaveHistoryData['leaveTypeName']),
                      ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(width: 180.0), // Adjust width as needed
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Container(
                        width: 20, // Set the desired width of the background
                        height: 30, // Set the desired height of the background
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFC8CDD8), // Set the background color
                        ),

                        child: const Icon(
                          Icons.arrow_forward, // Set your desired icon
                          color: Colors
                              .white, // Set the color of the icon to transparent
                          size: 15, // Set the size of the icon
                        ),
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
  }
}
