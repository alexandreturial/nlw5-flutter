import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nlw5/core/app_colors.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
 
  LevelButtonWidget(
    {Key? key, required this.label}
  ) : assert(['Fácil', 'Médio', 'Difícil', 'Perito'].contains(label)), super(key: key);

  
  final config = {
    "Fácil":{
      "color" : AppColors.levelButtonFacil,
      "borderColor" : AppColors.levelButtonBorderFacil,
      "textColor" : AppColors.levelButtonTextFacil
    },
     "Médio":{
      "color" : AppColors.levelButtonMedio,
      "borderColor" : AppColors.levelButtonBorderMedio,
      "textColor" : AppColors.levelButtonTextMedio
    },
    "Difícil":{
      "color" : AppColors.levelButtonDificil,
      "borderColor" : AppColors.levelButtonBorderDificil,
      "textColor" : AppColors.levelButtonTextDificil
    },
    "Perito":{
      "color" : AppColors.levelButtonPerito,
      "borderColor" : AppColors.levelButtonBorderPerito,
      "textColor" : AppColors.levelButtonTextPerito
    },
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get textColor => config[label]!['textColor']!;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color:  color,
        border: Border.fromBorderSide(
          BorderSide(color: borderColor),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.047, vertical: screenSize.height * 0.0115),
        child: Text(label, style: GoogleFonts.notoSans(
          color: textColor,
          fontSize: screenSize.width > 400 ? 13 : screenSize.width * 0.037,
          
        )),
      ), 
    );
  }
}