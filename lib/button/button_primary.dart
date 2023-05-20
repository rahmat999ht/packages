import 'package:flutter/material.dart';

class ButtonPrymary extends StatelessWidget {
  const ButtonPrymary({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.isLoading = false,
    this.bgColor,
    this.height,
    this.width,
    this.fontSize,
  });

  final void Function() onPressed;
  final String text;
  final Color? textColor;
  final Color? bgColor;
  final bool? isLoading;
  final double? height;
  final double? width;
  final double? fontSize;

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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
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
                fontSize: fontSize ?? 24,
                color: textColor ?? Colors.white,
              ),
            ),
    );
  }
}
