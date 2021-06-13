import 'package:flutter/material.dart';

class ToolbarActions extends StatelessWidget {
  const ToolbarActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      mainAxis: Axis.horizontal,
      children: [
        IconButton(
          icon: Icon(Icons.language), 
          onPressed: () => {}
        ),
        IconButton(
          icon: Icon(Icons.fullscreen),
          onPressed: () => {}
        ),
        IconButton(
          icon: Icon(Icons.search), 
          onPressed: () => {}
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border_rounded), 
          onPressed: () => {}
        ),
        IconButton(
          icon: Icon(Icons.mail_outline_rounded), 
          onPressed: () => {}
        ),
        IconButton(
          icon: Icon(Icons.notifications_none_rounded), 
          onPressed: () => {}
        ),
        InkWell(
          onTap: () => {},
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Text('F'),
          ),
        )
      ],
    );
  }
}