import 'package:flutter/material.dart';

import '../../responsive.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: Colors.black,
          child: Text(
            'F',
            style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                          color: Colors.white,
                        )
          ),
        ),
        SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back, Fernando!',
              style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: Responsive.isMobile(context) ? 20 : 30
                          ),
            ),
            RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.notifications, color: Colors.blueGrey.shade300, size: 20,)
                  ),
                  TextSpan(
                    text: 'You have 2 new messages and 15 new tasks',
                    style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                  color: Colors.blueGrey.shade300,
                                  fontSize: Responsive.isMobile(context) ? 14 : 16,
                                )
                  ),
                ]
              )
            )
          ]
        )
      ],
    );
  }
}