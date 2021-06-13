import 'package:flutter/material.dart';

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