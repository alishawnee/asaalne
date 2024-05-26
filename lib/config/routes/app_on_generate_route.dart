import 'package:asaalne/config/routes/routes.dart';
import 'package:asaalne/core/di/main_injection_container.dart' as di;
import 'package:asaalne/features/text_generate/presentation/cubit/text_generate_cubit.dart';
import 'package:asaalne/features/text_generate/presentation/screens/text_generate_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

Route? appOnGenerateRoute(RouteSettings routeSettings) =>
    switch (routeSettings.name) {
      Routes.textGenerateRoute => navigator(
          BlocProvider<TextGenerateCubit>(
            create: (context) => di.sl<TextGenerateCubit>(),
            child: const TextGenerateScreen(),
          ),
        ),
      _ => null,
    };

PageTransition navigator(Widget screen) =>
    PageTransition(child: screen, type: PageTransitionType.bottomToTop);
