import 'package:first_app/screens/leave/pages/my.approval.list.page.dart';
import 'package:first_app/widgets/leave/my.leave.history.widget.dart';
import 'package:flutter/material.dart';

class TabsHistoryandApprovals extends StatefulWidget {
  const TabsHistoryandApprovals({super.key});

  @override
  _TabsHistoryandApprovalsState createState() =>
      _TabsHistoryandApprovalsState();
}

class _TabsHistoryandApprovalsState extends State<TabsHistoryandApprovals> {
  int _currentIndex = 0;
  final List<Widget> tabViews = [
    MyleaveHistoriesWidget(),
    MyApprovalListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    const selectedColor = Color(0xFF6B7A99);
    const unselectedColor = Color(0xFF6B7A99);
    const indicatorColor = Color(0xff0ff8d5c);

    return DefaultTabController(
      length: 2,
      initialIndex: _currentIndex,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 5,
              left: 16,
              right: 16,
            ),
            child: TabBar(
              labelColor: selectedColor,
              unselectedLabelColor: unselectedColor,
              indicatorColor: indicatorColor,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              tabs: [
                Tab(
                  child: Text(
                    'My leave history',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'NunitoSans',
                      fontWeight: _currentIndex == 0
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Approvals',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'NunitoSans',
                      fontWeight: _currentIndex == 1
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: tabViews,
            ),
          ),
        ],
      ),
    );
  }
}
