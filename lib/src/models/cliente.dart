import 'package:mobx/mobx.dart';
part 'cliente.g.dart';

class Cliente = _ClienteBase with _$Cliente;

abstract class _ClienteBase with Store {
  @observable
  String nome = 'aaa';

  @action
  mudarNome(String valor) => nome = valor;

  @observable
  String cpf = '000.000.000-00';
  @action
  mudarCpf(String valor) => cpf = valor;

  @observable
  String email = 'a@a.com';
  @action
  mudarEmail(String valor) => email = valor;
}
