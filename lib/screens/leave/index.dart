import 'package:first_app/screens/leave/pages/my.leave.types.page.dart';
import 'package:first_app/widgets/leave/my.leave.cards.widget.dart';
import 'package:first_app/widgets/leave/tabs.history.and.approvals.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                child: MyleaveTypesPage(),
              ),
              const Expanded(child: TabsHistoryandApprovals())
            ],
          ),
        ),
      ),
    );
  }
}
