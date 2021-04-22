import 'package:flutter/material.dart';
import 'package:nlw5/core/app_text_styles.dart';
import 'package:nlw5/shared/widgets/ProgressIndicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.07),
      child: Column(
        children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text(
              'Questao 04',
              style: AppTextStyles.body,
            ),
            Text(
              "04 de 10",
              style: AppTextStyles.body,
            )
          ]
        ),
        SizedBox(
          height: 16
        ),
        ProgressIndicatorWidget(value: 0.7,)
        ]
      ),
    );
  }
}