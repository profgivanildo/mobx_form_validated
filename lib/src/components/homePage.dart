import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/src/controllers/controller.dart';
import 'package:provider/provider.dart';

import 'bodyHomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Scaffold(
        appBar: AppBar(
          title: Observer(
            builder: (BuildContext context) {
              return Text(
                controller.ehValido
                    ? 'MobX App - Formulário validado'
                    : 'MobX App - Formulário não validado',
              );
            },
          ),
        ),
        body: BodyWidget());
  }
}
