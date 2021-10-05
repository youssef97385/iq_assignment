import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_event.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_state.dart';
import 'package:iq_sample_app/data/repository/irepository.dart';
import 'package:iq_sample_app/utils/theme/theme.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  IRepository _iRepository;
  ThemeBloc(this._iRepository) : super(ThemeState.initial());

  @override
  ThemeState get initialState => ThemeState.initial();

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if(event is ChangeTheme){

      print("changing themeBlc ${event.isOn}");
      ThemeData themeMode = state.themeData == MyThemes.lightTheme ? MyThemes.darkTheme : MyThemes.lightTheme;
      yield state.rebuild((b) => b..themeData=themeMode);
    }
  }
}