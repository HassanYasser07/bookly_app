import 'package:bookly_app/core/widgets/Circular_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custombook_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if(state is FeaturedBooksSuccess){
            return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .29,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        height: 150,
                        child: const CustomBookItem());
                  }),
            );

          }else if(state is FeaturedBooksFailure){
            return CustomErrorWidget(errMessage: state.errMessage);
          }else{
            return CircularLoadingIndicator();
          }

        },
      ),
    );
  }
}