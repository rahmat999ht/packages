import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {
  const ButtonOutline({
    super.key,
    required this.onPressed,
    required this.text,
    this.height,
    this.width,
    this.txSize,
  });
  final void Function() onPressed;
  final String text;
  final double? height;
  final double? width;
  final double? txSize;
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
        side: const BorderSide(
          width: 2.0,
          color: Colors.black38,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        // "Get Started",
        text,
        style: TextStyle(
          fontSize: txSize ?? 14,
          color: Colors.black38,
        ),
      ),
    );
  }
}
