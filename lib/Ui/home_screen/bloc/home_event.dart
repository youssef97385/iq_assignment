library home_event;

import 'package:built_value/built_value.dart';

part 'home_event.g.dart';


abstract class HomeEvent{}
abstract class GetHomeData extends HomeEvent
implements Built<GetHomeData, GetHomeDataBuilder> {

  //fields go here



  GetHomeData._();

  factory GetHomeData([updates(GetHomeDataBuilder b)]) = _$GetHomeData;
}