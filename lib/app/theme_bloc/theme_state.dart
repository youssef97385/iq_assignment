library theme_state;

import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart'as material;
import 'package:iq_sample_app/utils/theme/theme.dart';


part 'theme_state.g.dart';


abstract class ThemeState
implements Built<ThemeState, ThemeStateBuilder> {

  //fields go here
  material.ThemeData get themeData;
  ThemeState._();

  factory ThemeState([updates(ThemeStateBuilder b)]) = _$ThemeState;
  factory ThemeState.initial(){
    return ThemeState((b)=>b..themeData = MyThemes.lightTheme);
  }
}