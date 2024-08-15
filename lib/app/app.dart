import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:overlay_kit/overlay_kit.dart';
import 'package:flutter_base_project/app/theme/color/app_colors.dart';
import 'package:flutter_base_project/app/theme/theme.dart';
import 'package:flutter_base_project/app/theme/themes/app_light_theme.dart';
import 'package:flutter_base_project/core/i10n/i10n.dart';
import 'controllers/general/app_config_controller.dart';
import 'libs/app/sip_state.dart';
import 'navigation/history_observer/navigation_history_observer.dart';
import 'package:flutter_base_project/app/navigation/route/route_factory.dart';
import 'libs/app/size_config.dart';
import 'theme/themes/app_dark_theme.dart';
import '../core/i10n/default_localization.dart';

class App extends StatelessWidget {
  final String title;

  const App({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlayKit(
      appPrimaryColor: AppColors.primary,
      child: SipState(
        sipState: AppConfigController(),
        builder: (BuildContext context) => LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            SizeConfig.setScreenSizeFromConstraints(constraints);
            final sipState = context.getState<AppConfigController>();
            return MaterialApp(
              navigatorKey: MyRouteFactory().navigatorKey,
              navigatorObservers: [NavigationHistoryObserver()],
              locale: sipState.locale,
              supportedLocales: getSupportedLocalList,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                AppLocalization.delegate
              ],
              builder: (BuildContext context, Widget? child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1)),
                  child: child!,
                );
              },
              scrollBehavior: ScrollConfiguration.of(context).copyWith(overscroll: false),
              title: title,
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.light,
              theme: getTheme(AppLightTheme()),
              darkTheme: getTheme(AppDarkTheme()),
              onGenerateRoute: MyRouteFactory().main.onGenerateRoute,
            );
          },
        ),
      ),
    );
  }
}
