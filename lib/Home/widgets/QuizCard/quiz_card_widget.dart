import 'package:flutter/material.dart';
import 'package:nlw5/core/app_colors.dart';
import 'package:nlw5/core/app_text_styles.dart';
import 'package:nlw5/core/core.dart';
import 'package:nlw5/shared/widgets/ProgressIndicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double porcent;

  const QuizCardWidget({
    Key? key,
    required this.title, 
    required this.completed, 
    required this.porcent
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(screenSize.height * 0.023),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenSize.width > 700 ? screenSize.height * 0.1 : screenSize.height * 0.048,
                width: screenSize.width > 700 ? screenSize.height * 0.1: screenSize.height * 0.048,
                child: Image.asset(AppImages.blocks),
              ),
              SizedBox(
                height: screenSize.width * 0.02
              ),
              Text(
                this.title,
                style: AppTextStyles.heading15,
              ),
            ],
          ),
          
          Row(

            children: [
              Container(
                padding: EdgeInsets.only(right: screenSize.height * 0.015),
                child: Text(
                  completed,
                  style: AppTextStyles.body11,
                  
                ),
              ),
              Expanded(
                child: ProgressIndicatorWidget(value: porcent),
              )
            ],
          )
        ]
      ),
    );
  }
}