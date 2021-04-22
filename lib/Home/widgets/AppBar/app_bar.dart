import 'package:flutter/material.dart';
import 'package:nlw5/Home/widgets/score_card.dart/scored_card_widget.dart';
import 'package:nlw5/core/core.dart';
import 'package:nlw5/shared/models/user_model.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final Size screenSize;

  AppBarWidget({ required this.user, required this.screenSize}) : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.07),
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
                      text: user.name,
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
                        user.photoUrl
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