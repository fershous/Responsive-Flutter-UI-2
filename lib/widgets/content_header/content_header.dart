import 'package:flutter/material.dart';

import '../../responsive.dart';
import 'header_actions.dart';
import 'header_footer.dart';
import 'header_title.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32, top: 48),
      color: Color.fromRGBO(30, 41, 59, 1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Responsive.isMobile(context) ? Axis.vertical : Axis.horizontal,
            children: [
              HeaderTitle(),
              if(Responsive.isMobile(context))
                SizedBox(height: 16,),
              HeaderActions()
            ],
          ),
          SizedBox(height: 48,),
          HeaderFooter()
        ],
      ),
    );
  }
}
