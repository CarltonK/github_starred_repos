import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'providers/providers.dart';
import 'screens/screens.dart';
import 'utilities/utilities.dart';

void main() {
  final List<SingleChildWidget> providers = [
    Provider(
      create: (context) => ApiProvider.empty(),
    ),
  ];

  // Pass providers to App
  runApp(
    MultiProvider(
      child: MyApp(),
      providers: providers,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Starred Repos',
      debugShowCheckedModeBanner: false,
      theme: Constants.appTheme,
      home: ListScreen(),
    );
  }
}
