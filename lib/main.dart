import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'translations/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('tr'),
        Locale('en'),
      ],
      assetLoader: const CodegenLoader(),
      path: 'assets/translations',
      fallbackLocale: const Locale('tr'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomePage(),
    );
  }
}
