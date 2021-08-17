// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Cliente on _ClienteBase, Store {
  final _$nomeAtom = Atom(name: '_ClienteBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$cpfAtom = Atom(name: '_ClienteBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$emailAtom = Atom(name: '_ClienteBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$_ClienteBaseActionController = ActionController(name: '_ClienteBase');

  @override
  dynamic mudarNome(String valor) {
    final _$actionInfo = _$_ClienteBaseActionController.startAction(
        name: '_ClienteBase.mudarNome');
    try {
      return super.mudarNome(valor);
    } finally {
      _$_ClienteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarCpf(String valor) {
    final _$actionInfo = _$_ClienteBaseActionController.startAction(
        name: '_ClienteBase.mudarCpf');
    try {
      return super.mudarCpf(valor);
    } finally {
      _$_ClienteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarEmail(String valor) {
    final _$actionInfo = _$_ClienteBaseActionController.startAction(
        name: '_ClienteBase.mudarEmail');
    try {
      return super.mudarEmail(valor);
    } finally {
      _$_ClienteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
cpf: ${cpf},
email: ${email}
    ''';
  }
}
