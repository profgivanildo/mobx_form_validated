import 'package:flutter/material.dart';
import 'package:mobx_app/src/components/homePage.dart';
import 'package:mobx_app/src/controllers/controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(create: (_)=> Controller(),)
      ],
      child: MaterialApp(
        title: 'App MobX - Form',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomePage(),
      ),  
    );
  }
}
