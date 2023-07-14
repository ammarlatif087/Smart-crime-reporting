import 'package:flutter/material.dart';

import '../src/index.dart';

class Utils {
  static fieldFocusChange(
    BuildContext context,
    FocusNode currentNode,
    FocusNode nextNode,
  ) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }

  static snackBar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: ColorManager.black,
        content: Text(message),
      ),
    );
  }

  static Text popinLightText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    double? letterSpacing,
    double? wordSpacing,
  }) {
    return Text(
      text,
      style: TextStyleManager.popinsReg(
        color: color,
        fontSize: fontSize,
        wordSpacing: letterSpacing,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }

  static Text popinRegText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    double? letterSpacing,
    double? wordSpacing,
  }) {
    return Text(
      text,
      style: TextStyleManager.popinsReg(
        color: color,
        fontSize: fontSize,
        wordSpacing: letterSpacing,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }

  static Text popinMedText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    double? wordSpacing,
    TextOverflow? textOverflow,
    int? maxLine,

    // double? height,
    double? letterSpacing,
  }) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLine,
      style: TextStyleManager.popinsMed(
        color: color,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,

        // height: height,
      ),
      textAlign: textAlign,
    );
  }

  static Text popinSemBoldText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    double? wordSpacing,
    TextOverflow? textOverflow,
    int? maxLines,

    // double? height,
    double? letterSpacing,
  }) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      style: TextStyleManager.popinsSemBold(
        color: color,
        fontSize: fontSize,
        letterSpacing: letterSpacing,

        // height: height,
      ),
      textAlign: textAlign,
    );
  }

  static Text popinBoldText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
  }) {
    return Text(
      text,
      style: TextStyleManager.popinsBold(
        color: color,
        fontSize: fontSize,
      ),
      textAlign: textAlign,
    );
  }
}
