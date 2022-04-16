import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constant.dart';
import 'package:flutter_application_1/Postdetail/post_detail.dart';
import 'package:flutter_application_1/modules/products.dart';

import 'banner.dart';
import 'modules/product_list_container.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeBanner(size: size),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text(
                "Snikker",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.5,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) => ProductListContainer(
                        product: products[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PostDetailPage(product: products[index]))),
                      ))),
        ],
      ),
    );
  }
}
