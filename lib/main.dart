import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/counter_provider_sample_app.dart';
import 'package:untitled/counter_viewmodel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterProviderSampleApp(),
    );
  }
}

