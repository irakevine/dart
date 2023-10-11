import 'package:first_app/models/leave/my.leave.card.dart';
import 'package:first_app/utils/index.dart';
import 'package:first_app/widgets/leave/my.leave.cards.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyleaveTypesPage extends StatelessWidget {
  MyleaveTypesPage({Key? key}) : super(key: key);
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 240,
          child: PageView.builder(
            controller: controller,
            itemCount: cards.length,
            itemBuilder: (_, index) {
              final card = cards[index];

              return MyLeaveCardWidget(leaveType: card);
            },
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SmoothPageIndicator(
          controller: controller,
          count: cards.length,
          effect: const ExpandingDotsEffect(
            dotHeight: 4,
            dotWidth: 4,
            dotColor: Color(0xFF6B7A99),
            activeDotColor: Color(0xFF6B7A99),

            // type: WormType.thinUnderground,
          ),
        ),
      ],
    );
  }
}
