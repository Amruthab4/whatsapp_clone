

import 'package:whatsapp_clone/utils/exports.dart';

class CustomFormField extends StatelessWidget {
  TextEditingController? controller;
  String hintText;
  dynamic validator;
  dynamic ontap;
  dynamic contentPadding;
  bool obscureText;
  bool readOnly;
  bool enabled;
  dynamic value;
  dynamic focusNode;
  int maxLines;
  dynamic onChanged;
  Widget? prefix;
  dynamic keyboardType;
  dynamic inputFormatters;
  dynamic maxLength;
  String label;
  TextStyle? hintStyle;
  TextStyle? textStyle;
  double? fontSize;
  FontWeight? fontWeight;
  Color?color;
  final textColor;

  //keyboardType: TextInputType.datetime,

  Widget? suffix;
  CustomFormField(
      {Key? key,
      this.keyboardType,
      this.prefix,
      this.focusNode,
      required this.enabled,
      required this.maxLines,
      required this.obscureText,
      this.inputFormatters,
      this.suffix,
      this.textStyle,
      this.hintStyle,
      this.maxLength,
      this.value,
      this.onChanged,
      this.contentPadding,
      this.validator,
      this.ontap,
      required this.readOnly,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      required this.label,
      this.controller,
      this.color,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: fontSize,
             
              color: color,
              fontWeight: fontWeight),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Kwhite,
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3FD3D1D8),
                  blurRadius: 30,
                  offset: Offset(15, 15),
                  spreadRadius: 0,
                )
              ]),
          child: TextFormField(
            maxLength: maxLength,
            obscureText: obscureText,
            readOnly: readOnly,
            controller: controller,
            maxLines: maxLines,
            enabled: enabled,
            focusNode: focusNode,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            style: textStyle ??
                TextStyle(fontSize: 14.sp, fontWeight: kFW500, color:kblack),
            decoration: InputDecoration(
              focusColor: Kwhite,
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              contentPadding: contentPadding,
              // const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color:kblack, width: 0.5),
                borderRadius: BorderRadius.circular(10.r),
              ),
              errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color:kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(10.r),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color:kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(10.r),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(10.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 1),
                borderRadius: BorderRadius.circular(10.r),
              ),
              fillColor: Kwhite,
              suffixIcon: suffix,
              prefixIcon: prefix,
              hintText: hintText,
              alignLabelWithHint: true,
              //make hint text
              hintStyle: hintStyle ??
                  TextStyle(
                    color: color,
                    fontSize: 14.sp,
                    fontWeight: kFW500,
                  ),

              //create lable
            ),
            validator: validator,
            onChanged: onChanged,
            onTap: ontap,
          ),
        ),
      ],
    );
  }
}

class CustomSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final dynamic validator;
  final EdgeInsets? contentPadding;
  final bool obscure;
  final bool readOnly;
  final dynamic value;
  final FocusNode? focusNode;
  final int maxLines;
  final Function(String)? onChanged;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Widget? suffix;

  CustomSearchField({
    Key? key,
    this.keyboardType,
    this.prefix,
    this.focusNode,
    required this.maxLines,
    this.suffix,
    this.hintStyle,
    this.value,
    this.onChanged,
    this.contentPadding,
    this.validator,
    required this.readOnly,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.controller,
    required this.obscure,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      controller: controller,
      maxLines: maxLines,
      focusNode: focusNode,
      keyboardType: keyboardType,
      style: TextStyle(
        fontSize: fontSize , 
        fontWeight: fontWeight , 
        color: textColor , 
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0), 
          borderSide: BorderSide.none, 
        ),
        contentPadding: contentPadding,
        filled: true,
        fillColor: kgrey.withOpacity(0.1), 
        //border: InputBorder.none, 
        prefixIcon: prefix,
        suffixIcon: suffix,
        hintText: hintText,
        hintStyle: hintStyle 
        // ?? TextStyle(
        //   color: kgrey,
        //   fontSize: fontSize, 
        //   fontWeight: fontWeight,
        // ),
      ),
      readOnly: readOnly,
      validator: validator,
      onChanged: onChanged,
    );
  }
}