import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/utils/go_to.dart';
import 'package:tayara_driver_mobile/utils/providers_setup.dart';

import 'Core/localization/app_language.dart';
import 'Utils/color_manager.dart';
import 'core/helper/dio_helper.dart';
import 'core/network/connection_status.dart';
import 'generated/l10n.dart';
import 'modules/screens/splash_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ConnectionStatus.getInstance().initialize();
  DioHelper.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
      create: (context) => AppLanguage(),
      child: Consumer<AppLanguage>(
        builder: (context, appLanguage, _) {
          return MultiProvider(
            providers: providers,
            child: Sizer(
              builder: (context, orientation, deviceType) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Tayara Driver',
                  theme: ThemeData(
                    primaryColor: ColorManager.primaryColor,
                    fontFamily: 'IBMPlex',
                    scaffoldBackgroundColor: Colors.white,
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: true,
                  ),
                  navigatorKey: GoTo.navigationKey,
                  locale: appLanguage.appLocal,
                  supportedLocales: S.delegate.supportedLocales,
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    DefaultCupertinoLocalizations.delegate,
                  ],
                  home: const SplashScreen(),
                );
              }
            ),
          );
        }
      ),
    );
  }
}
