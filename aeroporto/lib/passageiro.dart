class Cliente{
  String _cpf ='';
  String _nome='';
  String _endereco='';
  String _telefone='';

  String get cpf => _cpf;

  set cpf(String cpf) {
    _cpf = cpf;
  }

  String get nome => _nome;

  set nome(String nome) {
    _nome = nome;
  }

  String get endereco => _endereco;

  set endereco(String endereco) {
    _endereco = endereco;
  }
  
  String get telefone => _telefone;

  set telefone(String telefone) {
    _telefone = telefone;
  }

  @override
  String toString() {
    return '$Cliente>> Nome: $nome Cpf: $cpf';
  }
}


