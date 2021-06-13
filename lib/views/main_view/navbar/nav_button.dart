import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    Key? key, 
    required this.title, 
    this.icon,
  }) : super(key: key);

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blueGrey.shade800
        ),
        child: Row(
          children: [
            if(icon != null)
              Icon(icon, color: Colors.white,),
            Text(
              title,
              style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(
                            color: Colors.white
                          ),
            )
          ],
        ),
      ),
    );
  }
}