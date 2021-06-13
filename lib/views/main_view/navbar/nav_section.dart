import 'package:flutter/material.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({
    Key? key, 
    required this.title, 
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListBody(
      mainAxis: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(
                          color: Colors.indigoAccent.shade400
                        ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subtitle!,
            style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(
                          color: Colors.grey.shade200
                        ),
          ),
        ),
      ],
    );
  }
}