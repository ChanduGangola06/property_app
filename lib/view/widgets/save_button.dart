import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.color,
    required this.titleColor,
  });

  final String title;
  final VoidCallback onPressed;
  final Color color;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 342,
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF2FA551)),
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: titleColor,
                fontSize: 16.sp,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                height: 0.09,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
