import 'package:first_app/screens/leave/pages/my.approval.list.page.dart';
import 'package:first_app/widgets/leave/my.leave.history.widget.dart';
import 'package:flutter/material.dart';

class TabsHistoryandApprovals extends StatelessWidget {
  const TabsHistoryandApprovals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight) / 1.8,
            child: Container(
              color: Colors.green,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(child: Container()),
                    const TabBar(
                      tabs: [Text("My leave history"), Text("Approvals")],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                children: <Widget>[MyleaveHistoriesWidget()],
              ),
              Column(
                children: <Widget>[MyApprovalListPage()],
              )
            ],
          ),
        ),
      ),
    );
  }
}
