import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_bloc.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_state.dart';
import 'package:iq_sample_app/utils/theme/theme.dart';

Widget baseText({title,size,color,textAlign ,decoration,fontWeight , height , mediaQuery}){
  return BlocBuilder<ThemeBloc , ThemeState>(builder: (context , themeState){
    return Container(
      // width: mediaQuery.width*0.9-17,
      child: Text(

        title,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: size,

            decoration: decoration,

            fontWeight: fontWeight,
            color:
            color != null? color :
            themeState.themeData == MyThemes.darkTheme?Colors.white:Color(0xff393741),
            height: height),

      ),
    );
  });
}
