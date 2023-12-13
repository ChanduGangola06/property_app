import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:property_app/view/screens/add_hostel_screen.dart';
import 'package:property_app/view/widgets/add_business_form.dart';

class AddBusinessScreen extends StatefulWidget {
  const AddBusinessScreen({super.key});

  @override
  State<AddBusinessScreen> createState() => _AddBusinessScreenState();
}

class _AddBusinessScreenState extends State<AddBusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Property Setup',
          style: TextStyle(
            color: const Color(0xFF374151),
            fontSize: 24.sp,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 342,
                height: 140,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFE8F5),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xFFE5E7EB),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/images/Paper-Upload.svg",
                        width: 30.46.w,
                        height: 35.83.h,
                      ),
                    ),
                    Text(
                      'Display Logo',
                      style: TextStyle(
                        color: const Color(0xFFE7319D),
                        fontSize: 12.sp,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                width: 342,
                height: 1,
                decoration: const BoxDecoration(
                  color: Color(0xFFE5E7EB),
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BUSINESS INFORMATION',
                    style: TextStyle(
                      color: const Color(0xFF9CA3AF),
                      fontSize: 12.sp,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down, size: 24),
                ],
              ),
              SizedBox(height: 16.h),
              const AddBusinessForm(),
              SizedBox(height: 49.h),
              Chip(
                avatar: SvgPicture.asset(
                  'assets/images/round-add.svg',
                  width: 24.w,
                  height: 24.h,
                ),
                label: Text(
                  'Add Inventory',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF2FA551),
                    fontSize: 14.sp,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  side: const BorderSide(
                    color: Color(0xFF2FA551),
                  ),
                ),
              ),
              SizedBox(height: 36.h),

              // Button
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddHostelScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 342.w,
                  height: 56.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE5E7EB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Complete your setup',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF9CA3AF),
                          fontSize: 16.sp,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
