import 'package:iq_sample_app/Ui/home_screen/home_screen.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_bloc.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_state.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';
import 'package:iq_sample_app/app/bloc/app_bloc.dart';
import 'package:iq_sample_app/core/app_language.dart';
import 'package:iq_sample_app/core/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iq_sample_app/Ui/splash_screen/splash_screen.dart';
import 'package:iq_sample_app/utils/theme/theme.dart';
import '../injectoin.dart';
import 'bloc/app_event.dart';
import 'bloc/app_state.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _AppBloc = sl<AppBloc>();

  @override
  void initState() {
    _AppBloc.add(IniEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _AppBloc,
        builder: (BuildContext context, AppState state) {
          return StreamBuilder(
              stream: localeSubjectAppLanguage.stream.distinct(),
              initialData: state.appLanguage == AppLanguageKeys.AR
                  ? Locale('ar', 'AE')
                  : state.appLanguage == AppLanguageKeys.KU
                      ? Locale('ar', 'EG')
                      : Locale('en', 'US'),
              builder: (context, snapshotLanguage) {
                return MultiBlocProvider(
                  providers: [
                    BlocProvider<ThemeBloc>(
                      create: (context) => sl<ThemeBloc>(),
                    ),
                  ],
                  child:


      BlocBuilder<ThemeBloc , ThemeState>(builder: (context , themeState){
        print("theme## ${themeState.themeData.toString()}");
        return   ScreenUtilInit(
          designSize: Size(360, 760),
          builder: () => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "App",
            color: Color.fromRGBO(16, 150, 141, 1),

            home:SplashScreen(),
            locale: snapshotLanguage.data == 1
                ? Locale('ar', 'AE')
                : snapshotLanguage.data == 0
                ? Locale('en', 'US')
                : Locale('ar', 'EG'),
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('en', 'en_US'), // English
              const Locale('ar', 'ar_AE'),
              const Locale('ar', 'ar_EG'),
            ],


            theme: themeState.themeData??MyThemes.lightTheme,

            localeResolutionCallback: (locale, supportedLocales) {
              for (var supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode ==
                    locale.languageCode) {
                  return locale;
                }
              }
              // If the locale of the device is not supported, use the first one
              // from the list (English, in this case).
              return supportedLocales.first;
            },
          ),
        );
      },)
                );
              });
        });
  }
}
