import 'package:mobx/mobx.dart';
import 'package:mobx_app/src/models/cliente.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var cliente = Cliente();

  @computed
  bool get ehValido {
    return validarNome() == null && validarEmail() == null;
  }

  String? validarNome() {
    if (cliente.nome == null || cliente.nome.isEmpty) {
      return 'Este campo é obrigatório!';
    } else if (cliente.nome.length < 3) {
      return 'Seu nome precisa ter mais de 3 caracteres!';
    }
    return null;
  }

  String? validarEmail() {
    if (cliente.email == null || cliente.email.isEmpty) {
      return 'Este campo é obrigatório!';
    } else if (!cliente.email.contains("@") ||
        !cliente.email.contains(".com")) {
      return 'Este e-mail é inválido!';
    }
    return null;
  }
}
