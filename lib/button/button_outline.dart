import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {
  const ButtonOutline({
    super.key,
    required this.onPressed,
    required this.text,
    this.height,
    this.width,
    this.fontSize,
    this.fontColor,
    this.colorBorder,
  });
  final void Function() onPressed;
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? fontColor;
  final Color? colorBorder;
  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: Size(
          width ?? sizeWidth,
          height ?? 25,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        side: BorderSide(
          width: 2.0,
          color: colorBorder ?? Colors.blue,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 14,
          color: fontColor ?? Colors.blue,
        ),
      ),
    );
  }
}
