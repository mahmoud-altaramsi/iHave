import 'package:flutter/material.dart';
import 'package:i_have/core/thems_App/color_them.dart';
import 'package:i_have/core/thems_App/style_thems.dart';

class BasicButton extends StatelessWidget {
  BasicButton({required this.title, super.key});
  String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 100,
          height: 40,
          color: ColorThems().bottomColor,
          child: Center(
            child: Text(
              title,
              style: StyleThems().title.copyWith(color: ColorThems().white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
