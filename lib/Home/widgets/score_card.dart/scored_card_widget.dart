import 'package:flutter/material.dart';
import 'package:nlw5/Home/widgets/Chart/chart_widget.dart';
import 'package:nlw5/core/app_colors.dart';
import 'package:nlw5/core/app_text_styles.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: ChartWidget(),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vamos começar",
                      style: AppTextStyles.heading,
                    ),
                    Text("Complete os desafios e avance em conhecimento",
                        style: AppTextStyles.body)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
