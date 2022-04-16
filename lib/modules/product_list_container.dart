import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/products.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductListContainer extends StatelessWidget {
  const ProductListContainer({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              // height: 1,
              // width: 160,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              product.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(0),
          //   child: Container(
          //     alignment: Alignment(1, 0),
          //     width: 1000,
          //     height: 5,
          //     child: RatingBar.builder(
          //       initialRating: 3,
          //       minRating: 1,
          //       direction: Axis.horizontal,
          //       allowHalfRating: true,
          //       itemCount: 5,
          //       itemPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          //       itemBuilder: (context, _) => Icon(
          //         Icons.star,
          //         color: Colors.amber,
          //       ),
          //       onRatingUpdate: (rating) {
          //         print(rating);
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
