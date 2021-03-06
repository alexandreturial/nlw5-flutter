import 'package:flutter/material.dart';
import 'package:nlw5/core/app_colors.dart';
import 'package:nlw5/core/app_text_styles.dart';

class AwnsetWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelect;
  
  const AwnsetWidget({
    Key? key, 
    required this.title, 
    this.isRight = false, 
    this.isSelect = false,
  }) : super(key: key);
  

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: isSelect ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(color: 
            isSelect ? _selectedBorderCardRight : AppColors.border)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: isSelect ? _selectedTextStyleRight : AppTextStyles.body,
              ),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  color: isSelect ? _selectedColorRight : AppColors.white,
                  borderRadius: BorderRadius.circular(500),
                  border: Border.fromBorderSide(
                    BorderSide(color: 
                    isSelect ? _selectedBorderRight : AppColors.border
                  ),)
                ),
                child: isSelect ? Icon(
                  _selectedIconRight,
                  size: 16,
                  color: Colors.white,
                )
                : null ,
              )
            ],
          ),
        ),
      ),
    );
  }
}