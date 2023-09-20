import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width *.2),
            child: AspectRatio(
              aspectRatio: 2.2/3.6,
              child: Container(

                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage('assets/images/female.png',)
                  ),
                ),
              ),
            ),
          ),
              SizedBox(height: 43,),
              Text('The Jungle Book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
              SizedBox(height: 6,),
              Opacity(
                opacity: .7,
                  child: Text('Rudyard Kioling',style: Styles.textStyle18.copyWith(

                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300
                  ),))
            ],
          ),
        ),
      ),
    );
  }
}
