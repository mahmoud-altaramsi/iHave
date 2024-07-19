import 'package:flutter/material.dart';
import 'package:i_have/core/thems_App/color_them.dart';
import 'package:i_have/core/thems_App/style_thems.dart';

class ProductTitle extends StatelessWidget {
  ProductTitle({this.textStyle, this.height, required this.title, super.key});
  double? height;
  String title;
  TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: ColorThems().continerColor,
      child: Center(
        child: Text(
          overflow: TextOverflow.ellipsis,
          title,
          style: textStyle ?? StyleThems().title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
