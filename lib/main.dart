import 'package:flutter/cupertino.dart' show DefaultCupertinoLocalizations;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart' as material_ui;
import 'package:simple_life/Bloc__state/general_bloc.dart';

import 'route_config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GeneralBloc>(
      create: (context) => GeneralBloc()..add(const LoadGeneralMessage()),
      child: MaterialApp.router(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          physics: const BouncingScrollPhysics(),
        ),
        title: 'SimpleLife',
        debugShowCheckedModeBanner: false,
        routerConfig: appRoutes,
        localizationsDelegates: const [
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
          material_ui.DefaultMaterialLocalizations.delegate,
        ],
      ),
    );
  }
}
