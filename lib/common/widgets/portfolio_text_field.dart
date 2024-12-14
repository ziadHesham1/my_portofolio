import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../portfolio_constants.dart';
import '../style/portfolio_colors.dart';

class PortfolioTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final double? width;
  final String? initialValue;
  final int maxLines;
  //final TextEditingController textController;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function(String?)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final bool isObscureText;
  final bool hasBorder;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  //final bool hasIcon;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final bool? enabled;
  final EdgeInsetsGeometry? contentPadding;

  const PortfolioTextField({
    super.key,
    this.labelText,
    this.width,
    //required this.textController,
    this.onSaved,
    this.validator,
    this.isObscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.onChanged,
    this.textCapitalization = TextCapitalization.none,
    this.initialValue,
    // this.hasIcon = false,
    this.maxLines = 1,
    this.controller,
    this.prefixIcon,
    this.hasBorder = true,
    this.onFieldSubmitted,
    this.textInputAction,
    this.focusNode,
    this.textAlign,
    this.onEditingComplete,
    this.textDirection,
    this.enabled,
    this.onTap,
    this.hintText,
    this.isRequired = true,
    this.contentPadding,
  });

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? PortfolioColors.secondary,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(6.r),
    );
  }

  OutlineInputBorder buildErrorBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? PortfolioColors.red,
        width: 0.5,
      ),
      gapPadding: 14,
      borderRadius: BorderRadius.circular(10),
    );
  }

  InputDecoration decoration() {
    return InputDecoration(
      labelText: hintText,
      labelStyle: PortfolioConstants.text_theme.labelLarge!
          .copyWith(color: PortfolioColors.black.withOpacity(0.5)),
      // hintText: hintText,
      // hintStyle: PortfolioConstants.text_theme.labelLarge!
      //     .copyWith(color: PortfolioColors.grey),
      filled: true,
      fillColor: PortfolioColors.white,
      focusColor: PortfolioColors.white,
      alignLabelWithHint: true,
      prefixIcon: prefixIcon,
      prefixIconColor: PortfolioColors.primary,
      errorMaxLines: 5,
      contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 6.w),

      suffixIcon: suffixIcon,
      suffixIconColor: PortfolioColors.primary,
      border: hasBorder ? buildBorder() : null,
      enabledBorder: hasBorder ? buildBorder() : null,
      focusedBorder: hasBorder ? buildBorder() : null,
      errorBorder: hasBorder ? buildErrorBorder() : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isArabic = PortfolioConstants.isCurrentLocaleArabic();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: labelText,
                  style: PortfolioConstants.text_theme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: PortfolioColors.dark_blue,
                  ),
                ),
                TextSpan(
                  text: ' *',
                  style: PortfolioConstants.text_theme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: PortfolioColors.accent,
                  ),
                ),
              ],
            ),
          ),
        Container(
          // width: width ?? PortfolioConstants.portfolio_screen_width * 0.8,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextFormField(
            selectionHeightStyle: BoxHeightStyle.max,
            onTap: onTap,
            enabled: enabled,
            textDirection: textDirection,
            textAlign:
                textAlign ?? (isArabic ? TextAlign.right : TextAlign.left),
            focusNode: focusNode,
            controller: controller,
            textCapitalization: textCapitalization,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            keyboardType: keyboardType,
            obscureText: isObscureText,
            //controller: textController,
            onSaved: onSaved,
            validator: validator,
            maxLines: maxLines,
            initialValue: initialValue,
            textInputAction: textInputAction ?? TextInputAction.next,
            decoration: decoration(),
            // ),
          ),
        ),
      ],
    );
  }
}
