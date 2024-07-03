import 'package:bookly_app/core/widgets/Circular_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes.dart';
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
                physics:const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child:  GestureDetector(
                          onTap: (){GoRouter.of(context).push(Routes.kBoolDetailsView,extra: state.books[index]);},
                            child: CustomBookImage(imageUrl:state.books[index].volumeInfo.imageLinks!.thumbnail )));
                  }),
            );

          }else if(state is FeaturedBooksFailure){
            return CustomErrorWidget(errMessage: state.errMessage);
          }else{
            return const CircularLoadingIndicator();
          }

        },
      ),
    );
  }
}