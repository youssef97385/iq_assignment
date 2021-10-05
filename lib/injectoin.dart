import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:iq_sample_app/Ui/home_screen/bloc/home_bloc.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_bloc.dart';


import 'package:iq_sample_app/data/db/db/db_services.dart';


import 'app/bloc/app_bloc.dart';

import 'core/constent.dart';
import 'data/http_helper/Ihttp_helper.dart';
import 'data/http_helper/http_helper.dart';
import 'data/prefs_helper/iprefs_helper.dart';
import 'data/prefs_helper/prefs_helper.dart';
import 'data/repository/irepository.dart';
import 'data/repository/repository.dart';

final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)))));

  // data

  // sl.registerLazySingleton<AppDatabase>(() => AppDatabase());
  sl.registerLazySingleton<DBService>(() => DBService());
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));


  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl(), sl()));



  /// AppBloc

  sl.registerFactory(() => AppBloc(sl()));


  /// HomeBloc

  sl.registerFactory(() => HomeBloc(sl(),sl()));

/// ThemeBloc

  sl.registerFactory(() => ThemeBloc(sl()));




}
