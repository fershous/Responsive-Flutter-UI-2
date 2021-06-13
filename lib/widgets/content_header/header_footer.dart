import 'package:flutter/material.dart';

class HeaderFooter extends StatelessWidget {
  const HeaderFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(41,52,69, 1.0),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
          ),
          child: Text(
            'Withinpixels',
            style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(
                          color: Colors.white,
                          fontSize: 18
                        ),
          ),
        ),
        SizedBox(width: 1,),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(41,52,69, 1.0),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20))
            ),
            child: Icon(Icons.more_horiz_rounded, color: Color.fromRGBO(137,151,172, 1.0), size: 21,),
          ),
        ),
      ],
    );
  }
}