import 'package:flutter/material.dart';

class FxCardFooter extends StatelessWidget {
  const FxCardFooter({
    Key? key, 
    required this.title, 
    required this.count,
  }) : super(key: key);

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title: ',
        style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(
                      color: Colors.grey.shade700
                    ),
        children: [
          TextSpan(
            text: '$count',
            style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w900
                        ),
          )
        ]
      ),
    );
  }
}