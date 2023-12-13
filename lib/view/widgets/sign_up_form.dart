import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:property_app/view/screens/add_business_screen.dart';
import 'package:property_app/view/widgets/input_textfield.dart';
import 'package:property_app/view/widgets/rounded_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool obscurePassword = true;
  bool checkboxValue = false;
  bool secondValue = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: TextStyle(
                color: const Color(0xFF374151),
                fontSize: 16.sp,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8.h),
            InputTextfield(
              controller: nameController,
              hintText: 'Full Name',
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 27.h),
            Text(
              'Email',
              style: TextStyle(
                color: const Color(0xFF374151),
                fontSize: 16.sp,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8.h),
            InputTextfield(
              controller: emailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 27.h),
            Text(
              'Password',
              style: TextStyle(
                color: const Color(0xFF374151),
                fontSize: 16.sp,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8.h),
            InputTextfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: obscurePassword,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                onPressed: () => setState(() {
                  obscurePassword = !obscurePassword;
                }),
                icon: Icon(
                  obscurePassword ? IconlyLight.show : IconlyLight.hide,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 27.h),
            Text(
              'Confirm Password',
              style: TextStyle(
                color: const Color(0xFF374151),
                fontSize: 16.sp,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8.h),
            InputTextfield(
              controller: cPasswordController,
              hintText: 'Password',
              obscureText: obscurePassword,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                onPressed: () => setState(() {
                  obscurePassword = !obscurePassword;
                }),
                icon: Icon(
                  obscurePassword ? IconlyLight.show : IconlyLight.hide,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 27.h),
            Row(
              children: [
                Checkbox(
                  value: checkboxValue,
                  activeColor: const Color(0xFFE7319D),
                  onChanged: (value) {
                    setState(() {
                      checkboxValue = value!;
                    });
                  },
                ),
                SizedBox(width: 5.w),
                Text(
                  'Yes, I want to receive email',
                  style: TextStyle(
                    color: const Color(0xFF374151),
                    fontSize: 16.sp,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Checkbox(
                  value: secondValue,
                  activeColor: const Color(0xFFE7319D),
                  onChanged: (value) {
                    setState(() {
                      secondValue = value!;
                    });
                  },
                ),
                SizedBox(width: 5.w),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'I agree to all ',
                        style: TextStyle(
                          color: const Color(0xFF374151),
                          fontSize: 16.sp,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms & Privacy Policy',
                        style: TextStyle(
                          color: const Color(0xFFE7319D),
                          fontSize: 16.sp,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 32.h),
            RoundedButton(
              text: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddBusinessScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
