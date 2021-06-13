import 'package:flutter/material.dart';

import 'fx_card_header.dart';

class FlexCard extends StatelessWidget {
  const FlexCard({
    Key? key, 
    this.header, 
    this.content, 
    this.footer, 
    required this.title,
  }) : super(key: key);

  final Widget? header;
  final Widget? content;
  final Widget? footer;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(32),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 0.2,
              blurRadius: 1.0
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            FxCardHeader(title: title,),
            SizedBox(height: 16,),
            if(content != null)
              content!,
            SizedBox(height: 32,),
            if(footer != null)
              footer!,
          ],
        ),
      ),
    );
  }
}