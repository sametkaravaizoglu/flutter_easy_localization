import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_localization_example/translations/locale_keys.g.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              LocaleKeys.hello.tr(),
            ),
          ),
          Center(
            child: Text(
              LocaleKeys.goodMorning.tr(),
            ),
          ),
          TextButton(
            onPressed: () {
              EasyLocalization.of(context)!.setLocale(const Locale("tr"));
            },
            child: const Text("TR"),
          ),
          TextButton(
            onPressed: () {
              EasyLocalization.of(context)!.setLocale(const Locale("en"));
            },
            child: const Text("EN"),
          )
        ],
      ),
    );
  }
}
