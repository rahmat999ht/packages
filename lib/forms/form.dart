import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextForm extends StatelessWidget {
  final TextEditingController controller;
  final double? width;
  final double? contentVertical;
  final double? contentHorizontal;
  final String? title;
  final String? hintText;
  final String? info;
  final Color? colorBorder;
  final Color? colorFocusBorder;
  final Color? colorBg;
  final Widget? icon;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool isPhone;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final bool isCheck;
  final bool isTitle;
  final bool isBorder;
  final int? maxLength;
  final double? radius;
  final double? hintSize;
  final double? distance;
  const TextForm({
    super.key,
    required this.controller,
    this.title,
    this.hintText,
    this.hintSize,
    this.width,
    this.icon,
    this.info,
    this.colorBorder,
    this.validator,
    this.textInputType,
    this.inputFormatters,
    this.onTap,
    this.isCheck = false,
    this.isTitle = false,
    this.isBorder = false,
    this.maxLength,
    this.radius,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.isPhone = false,
    this.colorFocusBorder,
    this.colorBg,
    this.contentVertical,
    this.contentHorizontal,
    this.distance,
  });

  const TextForm.isTitle({
    super.key,
    required this.controller,
    required this.title,
    this.hintSize,
    this.hintText,
    this.width,
    this.icon,
    this.info,
    this.colorBorder,
    this.validator,
    this.textInputType,
    this.inputFormatters,
    this.onTap,
    this.isCheck = false,
    this.isBorder = false,
    this.maxLength,
    this.radius,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.isPhone = false,
    this.colorFocusBorder,
    this.colorBg,
    this.contentVertical,
    this.distance,
    this.contentHorizontal,
  }) : isTitle = true;

  const TextForm.border({
    super.key,
    required this.controller,
    required this.title,
    this.hintText,
    this.hintSize,
    this.width,
    this.icon,
    this.info,
    this.colorBorder,
    this.validator,
    this.textInputType,
    this.inputFormatters,
    this.onTap,
    this.isCheck = false,
    this.isTitle = false,
    this.isPhone = false,
    this.maxLength,
    this.radius,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.colorFocusBorder,
    this.colorBg,
    this.contentVertical,
    this.distance,
    this.contentHorizontal,
  }) : isBorder = true;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width ?? sizeWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isTitle)
            Text(
              title!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          if (isTitle) SizedBox(height: distance ?? 10),
          TextFormField(
            onChanged: onChanged,
            maxLength: maxLength,
            maxLines: null,
            minLines: 1,
            controller: controller,
            validator: isCheck == true
                ? (value) {
                    if (nullValidation(value)) {
                      return "Harap di isi";
                    }
                    return null;
                  }
                : validator,
            readOnly: onTap != null,
            onTap: onTap,
            keyboardType: isPhone ? TextInputType.phone : textInputType,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              fillColor: colorBg ?? Colors.transparent,
              enabledBorder: OutlineInputBorder(
                borderSide: isBorder
                    ? BorderSide(color: colorBorder ?? Colors.grey)
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(radius ?? 8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: isBorder
                    ? BorderSide(color: colorFocusBorder ?? Colors.grey)
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(radius ?? 8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: isBorder
                    ? const BorderSide(color: Colors.red)
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(radius ?? 8),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: isBorder
                    ? const BorderSide(color: Colors.red)
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(radius ?? 8),
              ),
              filled: true,
              labelText: isTitle ? null : title,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black38,
                fontSize: hintSize ?? 14,
              ),
              alignLabelWithHint: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: contentHorizontal ?? 14,
                vertical: contentVertical ?? 16,
              ),
              isDense: true,
              suffixIcon: suffixIcon,
              icon: icon,
              prefixIcon: prefixIcon,
            ),
          ),
          Visibility(
            visible: info != null,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 16),
              child: Text(
                info ?? "",
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool nullValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return true;
    }
    return false;
  }
}
