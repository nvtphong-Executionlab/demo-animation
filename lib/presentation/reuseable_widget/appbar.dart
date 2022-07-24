
import 'package:demo_animation/theme/colors.dart';
import 'package:demo_animation/theme/sizes.dart';
import 'package:demo_animation/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: colorWhite,
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(color: colorGray24)
        ),
          child: Image.asset('assets/images/logo.jpg'),
      ),
      title: Text(title, style: headline6,),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
