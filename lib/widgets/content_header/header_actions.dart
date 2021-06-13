import 'package:flutter/material.dart';

class HeaderActions extends StatelessWidget {
  const HeaderActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(71,85,105, 1.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.mail, color: Colors.white, size: 20,),
              SizedBox(width: 10,),
              Text(
                'Messages',
                style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(
                              color: Colors.white
                            )
              ),
            ]
          )
        ),
        SizedBox(width: 10,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(79,70,229, 1.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.settings, color: Colors.white, size: 20,),
              SizedBox(width: 10,),
              Text(
                'Setting',
                style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(
                              color: Colors.white
                            )
              ),
            ]
          )
        ),
      ],
    );
  }
}