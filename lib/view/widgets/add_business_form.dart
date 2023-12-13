import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_app/view/widgets/bold_textfield.dart';
import 'package:property_app/view/widgets/city_drop_box.dart';
import 'package:property_app/view/widgets/drop_down_box.dart';
import 'package:property_app/view/widgets/input_textfield.dart';
import 'package:property_app/view/widgets/state_drop_box.dart';

class AddBusinessForm extends StatefulWidget {
  const AddBusinessForm({super.key});

  @override
  State<AddBusinessForm> createState() => _AddBusinessFormState();
}

class _AddBusinessFormState extends State<AddBusinessForm> {
  final propertyNameController = TextEditingController();
  final phoneCController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Property Type',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          const DropDownBox(),
          SizedBox(height: 12.h),
          Text(
            'Property Name',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          BoldTextfield(
            controller: propertyNameController,
            hintText: 'Vista Property',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12.h),
          Text(
            'Phone number',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          InputTextfield(
            controller: phoneCController,
            hintText: 'Phone number',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12.h),
          Text(
            'Email Address',
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
            hintText: 'Email Address',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12.h),
          Text(
            'Address',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          BoldTextfield(
            controller: addressController,
            hintText: '123 Serene Street, Rajpur',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12.h),
          Text(
            'State',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          const StateDropBox(),
          SizedBox(height: 12.h),
          Text(
            'City',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          const CityDropBox(),
          SizedBox(height: 12.h),
          Text(
            'Pincode',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          InputTextfield(
            controller: phoneCController,
            hintText: 'e.g. 220011',
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}
