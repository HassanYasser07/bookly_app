import 'package:bookly_app/features/home/presentation/manger/newest%20books%20cubit/newest__books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indecator.dart';
import 'best_saler_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess){
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  BestSellerListViewItem(bookModel: state.books[index],);
            },
          );
        }else if(state is NewestBooksFailure){
          return CustoEerrorMessage(errMessage: state.errMessage,);
        } else{
    return CustomLoadingIndicator();
    }

      },
    );
  }
}
