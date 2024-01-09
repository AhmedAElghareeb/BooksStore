import 'package:flutter/material.dart';
import 'book_image_item.dart';

class BooksListViewHorizontal extends StatelessWidget {
  const BooksListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemBuilder: (context, index) => const BookImageItem(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
