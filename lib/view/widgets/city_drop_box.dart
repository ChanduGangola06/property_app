import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CityDropBox extends StatefulWidget {
  const CityDropBox({super.key});

  @override
  State<CityDropBox> createState() => _CityDropBoxState();
}

class _CityDropBoxState extends State<CityDropBox> {
  String dropdownvalue = 'Dehradun';

  var items = [
    'Dehradun',
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