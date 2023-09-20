import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
          ],
        ),
      ),
    );
  }
}
