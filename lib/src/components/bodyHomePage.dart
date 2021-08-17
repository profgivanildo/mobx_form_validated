import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/src/controllers/controller.dart';
import 'package:provider/provider.dart';

class BodyWidget extends StatelessWidget {
  _textfild(
      {required String lblText,
      required onChanged,
      String? Function()? textErro}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: lblText,
        errorText: textErro == null ? null : textErro(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Observer(
            builder: (_) {
              return _textfild(
                lblText: 'Nome',
                onChanged: controller.cliente.mudarNome,
                textErro: controller.validarNome,
              );
            },
          ),
          SizedBox(height: 30),
          Observer(
            builder: (_) {
              return _textfild(
                lblText: 'E-mail',
                onChanged: controller.cliente.mudarEmail,
                textErro: controller.validarEmail,
              );
            },
          ),
          SizedBox(height: 30),
          Observer(
            builder: (_) {
              return _textfild(lblText: 'CPF', onChanged: (_) => {});
            },
          ),
          SizedBox(height: 50),
          Observer(
            builder: (_) {
              return ElevatedButton(
                onPressed: controller.ehValido ? () => {} : null,
                child: Text('Cadastrar'),
              );
            },
          ),
        ],
      ),
    );
  }
}
