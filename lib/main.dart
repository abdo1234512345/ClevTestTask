import 'package:clevtask/Features/splash_view/presentation/views/splash_view.dart';
import 'package:clevtask/core/helper/on_generate_routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(enabled: false, builder: (context) => const ClevTask()),
);

class ClevTask extends StatelessWidget {
  const ClevTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
    );
  }
}
