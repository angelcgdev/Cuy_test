import 'package:cuy_test/data/datasource/login_api_repository_impl.dart';
import 'package:cuy_test/data/datasource/plans_api_repository_impl.dart';
import 'package:cuy_test/main_notifier.dart';
import 'package:cuy_test/presentation/home/home_notifier.dart';
import 'package:cuy_test/presentation/login/login_notifier.dart';
import 'package:cuy_test/presentation/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => LoginNotifier(
                apiReapositoryInterface: LoginApiRepositoryImpl())),
        ChangeNotifierProvider(
            create: (_) => MainNotifier(
                apiReapositoryInterface: LoginApiRepositoryImpl())),
        ChangeNotifierProvider(
            create: (_) => HomeNotifier(
                apiReapositoryInterface: PlansApiRepositoryImpl())),
      ],
      child: MaterialApp(
        title: 'Cuy - Test',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
          Locale('es', ''), // Spanish, no country code
        ],
        theme: ThemeData.light().copyWith(useMaterial3: true),
        darkTheme: ThemeData.dark().copyWith(useMaterial3: true),
        themeMode: ThemeMode.system,
        initialRoute: 'splash',
        routes: appRoutes,
      ),
    );
  }
}
