import 'package:flutter/material.dart';
import 'package:nlw5/Home/widgets/score_card.dart/scored_card_widget.dart';
import 'package:nlw5/core/core.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
     
      child: Stack(
        children: [
          Container(
            height: 161,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text.rich(
                  TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                      text: "Alexandre",
                      style: AppTextStyles.titleBold
                      ),
                    ]
                  ),
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/29807033?v=4"
                      )
                    )
                  ),
                )
              ]
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: ScoreCardWidget()
          )
        ],
      ),
    )
  );
}