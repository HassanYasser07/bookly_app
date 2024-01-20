 import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key, required this.imageUrl, }) : super(key: key);
 final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/4,
      child: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image:NetworkImage(imageUrl!)
          ),
        ),
      ),
    );
  }
}
