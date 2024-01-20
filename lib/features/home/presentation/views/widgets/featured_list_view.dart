import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import 'custombook_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .29,
              child: ListView.builder(
                physics:  const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        height: 150,
                        child:  CustomBookItem(

                           imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail as String,
                        ));
                  }),
            ),
          );

        } else if (state is FeaturedBooksFailure){
          return CustoEerrorMessage(errMessage: state.errMessage,);
        }else{
          return CustomLoadingIndicator();
        }

      },
    );
  }
}