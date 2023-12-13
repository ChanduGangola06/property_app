import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_app/view/screens/home_screen.dart';
import 'package:property_app/view/widgets/input_textfield.dart';
import 'package:property_app/view/widgets/inventory_type_box.dart';
import 'package:property_app/view/widgets/save_button.dart';
import 'package:property_app/view/widgets/space_name_box.dart';
import 'package:property_app/view/widgets/status_box.dart';

class AddHostelForm extends StatefulWidget {
  const AddHostelForm({super.key});

  @override
  State<AddHostelForm> createState() => _AddHostelFormState();
}

class _AddHostelFormState extends State<AddHostelForm> {
  final otherController = TextEditingController();
  final capacityController = TextEditingController();
  final amenitiesController = TextEditingController();
  final notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Property Space Name',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          const SpaceNameBox(),
          SizedBox(height: 12.h),
          Text(
            'Property Inventory Type',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          const InventoryTypeBox(),
          SizedBox(height: 12.h),
          Text(
            'Other Property Inventory Type',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          InputTextfield(
            controller: otherController,
            hintText: 'Add Property Inventory Type',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12.h),
          Text(
            'Capacity',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          InputTextfield(
            controller: capacityController,
            hintText: 'Number of occupants',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12.h),
          Text(
            'Amenities',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          InputTextfield(
            controller: otherController,
            hintText: 'Available amenities',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12.h),
          Text(
            'Availability Status',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          const StatusBox(),
          SizedBox(height: 12.h),
          Text(
            'Notes (if any)',
            style: TextStyle(
              color: const Color(0xFF374151),
              fontSize: 16.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          InputTextfield(
            controller: otherController,
            hintText: 'Add notes if any...',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 32.h),
          SaveButton(
            title: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
            color: const Color(0xFFF9FAFB),
            titleColor: const Color(0xFF2FA551),
          ),
          SizedBox(height: 15.h),
          SaveButton(
            title: 'Save',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            color: const Color(0xFF2FA551),
            titleColor: const Color(0xFFF9FAFB),
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
