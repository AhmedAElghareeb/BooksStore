import 'package:flutter/material.dart';

import 'book_image_item.dart';

class BookYouCanLikesList extends StatelessWidget {
  const BookYouCanLikesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemBuilder: (context, index) => const BookImageItem(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
