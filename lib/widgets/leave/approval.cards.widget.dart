import 'package:first_app/utils/index.dart';
import 'package:flutter/material.dart';

class ApprovalCardWidget extends StatefulWidget {
  final Map<String, dynamic> leaveApproval;

  const ApprovalCardWidget({super.key, required this.leaveApproval});

  @override
  State<ApprovalCardWidget> createState() => _ApprovalCardWidgetState();
}

class _ApprovalCardWidgetState extends State<ApprovalCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
                child: const CircleAvatar(
                  radius: 30,
                  // backgroundImage: AssetImage(
                  //     'your_image_path_here'), // Replace with your image asset
                ),
              ),
              title: Text(
                widget.leaveApproval['name'],
                style: const TextStyle(
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
                      text: widget.leaveApproval['date'],
                      style: const TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8893AA)),
                    ),
                    TextSpan(
                      text: '\n${widget.leaveApproval['dateinfo']}\n',
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF6B7A99)),
                    ),
                    TextSpan(
                      text: widget.leaveApproval['leaveTypeName'],
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                        color: getColorFromApprovalString(
                            widget.leaveApproval['leaveTypeName']),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0) + EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFF7133),
                      ), // Background color
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Text color
                    ),
                    child: const Text('Accept'),
                  ),
                  const SizedBox(width: 8.0),
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                            width: 2, color: Color(0xFFFF7133)), // Border
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFF7133), // Text color
                      ),
                    ),
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
