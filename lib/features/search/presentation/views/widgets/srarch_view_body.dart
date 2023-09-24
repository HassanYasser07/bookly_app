import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomSearchTextField(),
        ),
        SizedBox(height: 16,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text('Search Result',style: Styles.textStyle18,),
        ),
        SizedBox(height: 16,),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}

