import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_image.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 45),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 24,),
          Spacer(),
          IconButton(onPressed: (){GoRouter.of(context).push(Routes.kSearchView);}, icon:const Icon( Icons.search),iconSize: 28,)
        ],
      ),
    );
  }
}
