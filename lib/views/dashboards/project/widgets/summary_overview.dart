import 'package:flutter/material.dart';

import 'overview_card.dart';

class OverviewSummary extends StatelessWidget {
  const OverviewSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OverviewCard(
            title: 'New Issues',
            counter: 214,
            foreground: Colors.indigo.shade900,
            background: Colors.indigo.shade50,
          ),
        SizedBox(width: 16,),
        OverviewCard(
          title: 'Closed',
          counter: 75,
          foreground: Colors.lightGreen.shade900,
          background: Colors.lightGreen.shade100,
        )
      ],
    );
  }
}