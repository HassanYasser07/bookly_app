import 'package:flutter/material.dart';
import '../../../../../core/utils/assets_image.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: AspectRatio(
        aspectRatio: 2.2/3.6,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image:AssetImage(AssetsData.test)
            ),
          ),
        ),
      ),
    );
  }
}
