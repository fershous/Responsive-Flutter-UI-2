import 'package:flutter/material.dart';

class FxCardContent extends StatelessWidget {
  const FxCardContent({
    Key? key, 
    required this.count, 
    required this.title, 
    required this.color,
  }) : super(key: key);

  final int count;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: '$count',
        style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(
                      color: color,
                      fontWeight: FontWeight.w900,
                      fontSize: 68
                    ),
        children: [
          TextSpan(
            text: '\n$title',
            style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(
                          color: color,
                          fontSize: 18
                        ),
          )
        ]
      )
    );
  }
}