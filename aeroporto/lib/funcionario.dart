import 'package:aeroporto/passageiro.dart';

class Funcionario extends Cliente{
  String _registro = '';

  String get registro => _registro;

  set registro(String registro) {
    _registro = registro;
  }

  @override
  String get nome => super.nome;

  @override
  String get telefone => super.telefone;

  @override
  String get cpf => super.cpf;

  @override
  String get endereco => super.endereco;
 
  @override
  String toString() {
    return '$Funcionario>> Nome: $nome  Registro: $registro  Cpf: $cpf';
  }
}