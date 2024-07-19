import 'package:flutter/material.dart';

import '../../../core/thems_App/color_them.dart';
import '../../../core/widget/product_title.dart';
import '../../../core/widget/basic_button.dart';

class ProductDisplayBox extends StatelessWidget {
  const ProductDisplayBox({
    super.key,
    required this.img,
    required this.description,
  });
  final String img;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorThems().scafoldColor,
      ),
      width: 400,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 175,
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(img),
              ),
            ),
          ),
          ProductTitle(
            title: description,
            height: 60,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BasicButton(title: "اتفرج"),
              BasicButton(title: "اشتري"),
            ],
          )
        ],
      ),
    );
  }
}
