import 'package:flutter/material.dart';
import 'package:macosui_counter/apps/mac_app.dart';
import 'package:macosui_counter/apps/mobile_app.dart';
import 'package:macosui_counter/state/counter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:universal_platform/universal_platform.dart';

/// Determines which "app" should be the root widget based on the current Platform.
class PlatformAdapter extends StatelessWidget {
  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CounterBloc>.value(value: counterBloc),
      ],
      builder: (context, child) {
        if (UniversalPlatform.isDesktopOrWeb) {
          return MacApp();
        } else {
          return MobileApp();
        }
      },
    );
  }
}
