import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownBox extends StatefulWidget {
  const DropDownBox({super.key});

  @override
  State<DropDownBox> createState() => _DropDownBoxState();
}

class _DropDownBoxState extends State<DropDownBox> {
  String dropdownvalue = 'Property Type';

  var items = [
    'Property Type',
    'Property Type 2',
    'Property Type 3',
    'Property Type 4',
    'Property Type 5',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      // Initial Value
      value: dropdownvalue,
      borderRadius: BorderRadius.circular(16.r),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Color(0xFFF3F4F6)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 2.w,
            color: const Color(0xFFE5E7EB),
          ),
        ),
      ),

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}
