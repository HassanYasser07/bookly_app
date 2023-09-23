import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.backgroundColor, required this.textColor, required this.borderRadius, required this.text}) : super(key: key);
final Color backgroundColor;
final String text;
final Color textColor;
final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor

        ),
          onPressed: (){}, child: Text( text,
        style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900),)),
    );
  }
}
