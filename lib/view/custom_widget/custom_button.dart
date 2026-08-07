import '../../utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/view/custom_widget/text.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.isEmptyBG,
    required this.title,
    required this.onTap,
    this.h,
    this.w,
  });

  bool isEmptyBG;
  String title;
  VoidCallback onTap;
  double? h;
  double? w;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.primaryColors, width: 2),
          color: isEmptyBG == true ? null : AppColor.primaryColors,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: CustomText(
          text: title,
          color: isEmptyBG == true ? AppColor.primaryColors : Colors.white,
          fSize: 18,
          fWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
