library theme_event;

import 'package:built_value/built_value.dart';

part 'theme_event.g.dart';


abstract class ThemeEvent{}
 abstract class  ChangeTheme extends ThemeEvent
implements Built<ChangeTheme, ChangeThemeBuilder> {

  //fields go here

   bool get isOn;

   ChangeTheme._();

  factory ChangeTheme([updates(ChangeThemeBuilder b)]) = _$ChangeTheme;
}