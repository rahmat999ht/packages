import 'package:flutter/material.dart';

class ButtonPrymary extends StatelessWidget {
  const ButtonPrymary({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.isLoading = false,
    this.bgColor,
    this.height,
    this.width,
    this.fontSize,
    this.radius,
  });

  final String text;
  final void Function() onPressed;
  final Color? textColor;
  final Color? bgColor;
  final bool? isLoading;
  final double? height;
  final double? width;
  final double? fontSize;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? Colors.blue,
        fixedSize: Size(
          width ?? sizeWidth,
          height ?? 25,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 10),
          ),
        ),
      ),
      onPressed: isLoading == true ? null : onPressed,
      child: isLoading == true
          ? const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(),
            )
          : Text(
              // "Get Started",
              text,
              style: TextStyle(
                fontSize: fontSize ?? 16,
                color: textColor ?? Colors.white,
              ),
            ),
    );
  }
}
