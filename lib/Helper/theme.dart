import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {

  const AppColors();

  //  static const Color loginGradientStart = const Color(0xFFfbab66);
  //  static const Color loginGradientEnd = const Color(0xFFf7418c);
  
   static const Color loginGradientStart = const Color(0xFF00c6ff);
   static const Color loginGradientEnd = const Color(0xFF0072ff);


  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}


class AppTypoGraphy{
  
 static const TextStyle normalTextStyle = TextStyle(fontSize:14,color: Colors.black38);


}