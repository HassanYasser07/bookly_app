 import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_image.dart';
class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/4,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage(AssetsData.test)
          ),
        ),
      ),
    );
  }
}
