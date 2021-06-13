import 'package:flutter/material.dart';

import 'package:proto_sys_2/views/main_view/main_view.dart';
import 'package:proto_sys_2/widgets/charts/example_chart.dart';
import 'package:proto_sys_2/widgets/content_header/content_header.dart';
import 'package:proto_sys_2/widgets/flex_card/flex_card.dart';
import 'package:proto_sys_2/widgets/flex_card/fx_card_content.dart';
import 'package:proto_sys_2/widgets/flex_card/fx_card_footer.dart';

import '../../../responsive.dart';

class ProjectView extends StatelessWidget {

  const ProjectView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return MainView(
      content: SingleChildScrollView(
        child: ListBody(
          mainAxis: Axis.vertical,
          children: [
            ContentHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: ListBody(
                children: [
                  Row(
                    children: [
                      Chip(
                        label: Text('Home')
                      )
                    ],
                  ),
                  SizedBox(width: 16, height: 16,),
                  Flex(
                    mainAxisSize: MainAxisSize.min,
                    direction: Axis.vertical,
                    children: [
                      SummaryCards(),
                      SizedBox(height: 16,),
                      FlexCard(
                        title: 'Github Issues Summary',
                        content: ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: Responsive.isDesktop(context) ? size.height * 0.50 : 900),
                          child: Flex(
                            direction: Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: LineChartSample1()
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Flex(
                                  mainAxisSize: MainAxisSize.min,
                                  direction: Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Overview',
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(height: 16,),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxHeight: Responsive.isDesktop(context) ? size.height * 0.45 : 400,
                                        maxWidth: double.infinity
                                      ),
                                      child: Flex(
                                        direction: Axis.vertical,
                                        children: [
                                          Expanded(
                                            child: OverviewSummary()
                                          ),
                                          SizedBox(width: 16, height: 16,),
                                          Expanded(
                                            flex: Responsive.isMobile(context) ? 2 : 1,
                                            child: Flex(
                                              mainAxisSize: MainAxisSize.min,
                                              direction: Responsive.isMobile(context) ? Axis.vertical : Axis.horizontal,
                                              children: [
                                                Expanded(
                                                  child: Flex(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                    direction: Axis.horizontal,
                                                    children: [
                                                      OverviewCard(
                                                        title: 'Fixed',
                                                        counter: 3,
                                                        foreground: Colors.blueGrey.shade800,
                                                        background: Colors.blueGrey.shade50,
                                                      ),
                                                      SizedBox(width: 16,),
                                                      OverviewCard(
                                                        title: 'Won´t Fix',
                                                        counter: 4,
                                                        foreground: Colors.blueGrey.shade800,
                                                        background: Colors.blueGrey.shade50,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 16, height: 16,),
                                                Expanded(
                                                  child: Flex(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                    direction: Axis.horizontal,
                                                    children: [
                                                      OverviewCard(
                                                        title: 'Re-opened',
                                                        counter: 8,
                                                        foreground: Colors.blueGrey.shade800,
                                                        background: Colors.blueGrey.shade50,
                                                      ),
                                                      SizedBox(width: 16,),
                                                      OverviewCard(
                                                        title: 'Needs Triage',
                                                        counter: 6,
                                                        foreground: Colors.blueGrey.shade800,
                                                        background: Colors.blueGrey.shade50,
                                                        )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
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

class OverviewCard extends StatelessWidget {
  const OverviewCard({
    Key? key, 
    required this.title, 
    required this.counter, 
    required this.foreground, 
    required this.background,
  }) : super(key: key);

  final String title;
  final int counter;
  final Color foreground;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: '$counter\n',
              style: TextStyle(color: foreground),
              children: [
                TextSpan(
                  text: title,
                  style: TextStyle(color: foreground)
                )
              ]
            ),
          ),
        )
      )
    );
  }
}

class SummaryCards extends StatelessWidget {
  const SummaryCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Flex(
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
      ),
      tablet: Flex(
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
      ), 
      desktop: Flex(
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
      ),
    );
  }
}
