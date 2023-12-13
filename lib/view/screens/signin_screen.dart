import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:property_app/view/screens/signup_screen.dart';
import 'package:property_app/view/widgets/sign_in_form.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 48.h),
              Image.asset(
                'assets/images/logo.png',
                width: 98.w,
                height: 36.h,
              ),
              SizedBox(height: 30.h),
              Text(
                'Sign in to OHSM',
                style: TextStyle(
                  color: const Color(0xFF374151),
                  fontSize: 24.sp,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.05.h,
                ),
              ),
              SizedBox(height: 32.h),
              const SignInForm(),

              SizedBox(height: 29.h),

              //
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 93.w,
                      height: 1.h,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE5E8EB),
                      ),
                    ),
                    Text(
                      'or continue with',
                      style: TextStyle(
                        color: const Color(0xFFD1D5DB),
                        fontSize: 16.sp,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      width: 93.w,
                      height: 1.h,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE5E8EB),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Container(
                  width: 342,
                  height: 52,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEFF6FF),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFBFDBFE)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/google.svg',
                        width: 20.w,
                        height: 20.w,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Continue with Google',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: 16.sp,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 108.h),

              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      color: const Color(0xFF374151),
                      fontSize: 16.sp,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: const Color(0xFFE7319D),
                        fontSize: 16.sp,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
