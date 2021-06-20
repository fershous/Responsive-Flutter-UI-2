import 'package:flutter/material.dart';

import 'package:proto_sys_2/responsive.dart';
import 'package:proto_sys_2/widgets/charts/example_chart.dart';
import 'package:proto_sys_2/widgets/flex_card/flex_card.dart';

import 'widgets/overview_card.dart';
import 'widgets/summary_cards.dart';
import 'widgets/summary_overview.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              IssuesSummary(size: size)
            ],
          ),
        ],
      ),
    );
  }
}

class IssuesSummary extends StatelessWidget {
  const IssuesSummary({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FlexCard(
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
    );
  }
}