// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:akthar/constants/app_theme.dart';
import 'package:akthar/widgets/heading_text.dart';

class CustomButton extends StatelessWidget {
  final double? height, width;
  final String name;
  final void Function()? onPressed;
  final Color? backgroundColor, foregroundColor;
  final double? elevation;
  final BorderSide side;
  final Widget icon;
  const CustomButton(
      {Key? key,
      required this.name,
      this.onPressed,
      this.backgroundColor,
      this.foregroundColor,
      this.height,
      this.width,
      this.elevation,
     required this.icon,
     this. side = BorderSide.none
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          elevation: elevation,
            shape: RoundedRectangleBorder(
            side:side,
                borderRadius: BorderRadius.circular(8)),
            backgroundColor: backgroundColor ?? primaryColorAR,
            foregroundColor: Colors.white),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 5.w,),
            HeadingText(
              fontSize: 14,
              text: name,
              color: foregroundColor ?? Colors.white,
            ),
          ],
        ));
  }
}
