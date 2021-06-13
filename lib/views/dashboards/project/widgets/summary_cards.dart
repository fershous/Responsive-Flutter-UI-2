import 'package:flutter/material.dart';

import 'package:proto_sys_2/responsive.dart';
import 'package:proto_sys_2/widgets/flex_card/flex_card.dart';
import 'package:proto_sys_2/widgets/flex_card/fx_card_content.dart';
import 'package:proto_sys_2/widgets/flex_card/fx_card_footer.dart';

// TODO(fershous): Use a more 'responsive' way to manage different views, such as GridView or Flex

class SummaryCards extends StatelessWidget {
  const SummaryCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileView(),
      tablet: TabletView(), 
      desktop: DesktopView(),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      direction: Axis.horizontal,
      children: [
        FlexCard(
          title: 'Summary',
          content: FxCardContent(count: 21, title: 'Due Tasks', color: Colors.blue,),
          footer: FxCardFooter(title: 'Completed', count: 13,),
        ),
        SizedBox(width: 16, height: 16,),
        FlexCard(
          title: 'Overdue',
          content: FxCardContent(count: 17, title: 'Tasks', color: Colors.red),
          footer: FxCardFooter(title: 'From yesterday', count: 9),
        ),
        SizedBox(width: 16, height: 16,),
        FlexCard(
          title: 'Issues',
          content: FxCardContent(count: 24, title: 'Open', color: Colors.orange),
          footer: FxCardFooter(title: 'Close today', count: 19),
        ),
        SizedBox(width: 16, height: 16,),
        FlexCard(
          title: 'Features',
          content: FxCardContent(count: 38, title: 'Proposals', color: Colors.green),
          footer: FxCardFooter(title: 'Implemented', count: 16),
        ),
      ],
    );
  }
}

class TabletView extends StatelessWidget {
  const TabletView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      direction: Axis.vertical,
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            FlexCard(
              title: 'Summary',
              content: FxCardContent(count: 21, title: 'Due Tasks', color: Colors.blue,),
              footer: FxCardFooter(title: 'Completed', count: 13,),
            ),
            SizedBox(width: 16, height: 16,),
            FlexCard(
              title: 'Overdue',
              content: FxCardContent(count: 17, title: 'Tasks', color: Colors.red),
              footer: FxCardFooter(title: 'From yesterday', count: 9),
            ),
          ],
        ),
        SizedBox(width: 16, height: 16,),
        Flex(
          direction: Axis.horizontal,
          children: [
            FlexCard(
              title: 'Issues',
              content: FxCardContent(count: 24, title: 'Open', color: Colors.orange),
              footer: FxCardFooter(title: 'Close today', count: 19),
            ),
            SizedBox(width: 16, height: 16,),
            FlexCard(
              title: 'Features',
              content: FxCardContent(count: 38, title: 'Proposals', color: Colors.green),
              footer: FxCardFooter(title: 'Implemented', count: 16),
            ),
          ],
        ),
      ],
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      direction: Axis.vertical,
      children: [
        FlexCard(
          title: 'Summary',
          content: FxCardContent(count: 21, title: 'Due Tasks', color: Colors.blue,),
          footer: FxCardFooter(title: 'Completed', count: 13,),
        ),
        SizedBox(width: 16, height: 16,),
        FlexCard(
          title: 'Overdue',
          content: FxCardContent(count: 17, title: 'Tasks', color: Colors.red),
          footer: FxCardFooter(title: 'From yesterday', count: 9),
        ),
        SizedBox(width: 16, height: 16,),
        FlexCard(
          title: 'Issues',
          content: FxCardContent(count: 24, title: 'Open', color: Colors.orange),
          footer: FxCardFooter(title: 'Close today', count: 19),
        ),
        SizedBox(width: 16, height: 16,),
        FlexCard(
          title: 'Features',
          content: FxCardContent(count: 38, title: 'Proposals', color: Colors.green),
          footer: FxCardFooter(title: 'Implemented', count: 16),
        ),
      ],
    );
  }
}
