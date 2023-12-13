import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_app/view/screens/signin_screen.dart';
import 'package:property_app/view/widgets/sign_up_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 48.h),
              Image.asset(
                'assets/images/logo.png',
                width: 98.w,
                height: 36.h,
              ),
              SizedBox(height: 30.h),
              Text(
                'Create an account',
                style: TextStyle(
                  color: const Color(0xFF374151),
                  fontSize: 24.sp,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.05.h,
                ),
              ),
              SizedBox(height: 32.h),
              const SignUpForm(),
              SizedBox(height: 72.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
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
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign in',
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
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
