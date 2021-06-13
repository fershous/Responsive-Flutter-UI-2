import 'package:flutter/material.dart';

class FxCardHeader extends StatelessWidget {
  const FxCardHeader({
    Key? key, 
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(
                        fontWeight: FontWeight.w500,
                      ),
        ),
        Spacer(),
        InkWell(
          onTap: () {},
          child: Icon(Icons.more_vert_rounded)
        ),
      ],
    );
  }
}