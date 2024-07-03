import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/Circular_loading_indicator.dart';
import 'custom_error_widget.dart';
import 'custombook_item.dart';
class SimilarBooksListView extends StatelessWidget {

  const SimilarBooksListView({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height *.15,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
           builder: (context, state) {
             if (state is SimilarBooksSuccess){
                   return SizedBox(
                     height: MediaQuery.of(context).size.height *.15,
                     child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: state.books.length,
                         itemBuilder: (context,index){
                           return  Padding(
                             padding: const EdgeInsets.all(5.0),
                             child:  CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',),
                           );
                         }),
                   );

             }else if(state is SimilarBooksFailure){
               return CustomErrorWidget(errMessage: state.errMessage,);
             }else{
               return const CircularLoadingIndicator();

             }



  },
),
    );
  }
}

