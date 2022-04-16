import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constant.dart';
import 'package:flutter_application_1/modules/products.dart';

import 'Detail_post_Body.dart';

class PostDetailPage extends StatelessWidget {
  final Product product;

  const PostDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kbgcolor,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
