import 'package:asaalne/asaalne_app.dart';
import 'package:asaalne/core/di/main_injection_container.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainInjectionContainer.init();
  runApp(const AsaalneApp());
}
