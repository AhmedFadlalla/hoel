import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarComponent extends StatelessWidget {
  const RatingBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RatingBar.builder(
        initialRating: 5,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,

        itemCount: 5,
        itemSize: 28,
        ignoreGestures: true,
        updateOnDrag: false,
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
          size: 25,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    );
  }
}
