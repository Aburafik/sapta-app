import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sabta_app/app.dart';

import 'Providers/routing_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ListenableProvider<RoutingProvider>(create: (context) => RoutingProvider()),
  ], child: const MyApp()));
}
