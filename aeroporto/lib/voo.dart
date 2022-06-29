import 'package:aeroporto/passagem.dart';
import 'funcionario.dart';
import 'package:colorize/colorize.dart';

class Voo{
  String aviao ='';
  Destino? destino;
  List<Passagem> passageiro = [];
  List<Passagem> espera =[];

  Voo(this.aviao, this.destino);

  void cadastraFuncionario(Passagem passagem) {
    if (passagem.passageiro is Funcionario) {
      if (passageiro.length <= 4) {
        int pesquisado = passageiro.indexWhere((Passagem p) => p.passageiro is Funcionario);
        if (pesquisado == -1) {
          passageiro.add(passagem);
          Colorize sucesso = Colorize('Funcionario Desingnado!').green();
          print(sucesso);
        } else {
          Colorize erro = Colorize('Ops, já temos um Funcionario neste voo, Funcionario designado para outro voo!').red();
          print(erro);
        }
      }
    }
  }

  void cadastraPassageiro(Passagem passagem){
        if(passageiro.length <= 4 ){
        passageiro.add(passagem);
        Colorize sucesso = Colorize('Passagem Comprada!').green();
        print(sucesso);
        }else{
        espera.add(passagem);
        Colorize erro = Colorize('Sem vagas neste voo, indo para espera!').red();
        print(erro);
       }
     }

  void mostraLista([outra = false]) {
    if (outra) {
      if (espera.isNotEmpty) {
        for (var pass in espera) {
          int index = espera.indexOf(pass);
          Colorize sucesso = Colorize("${index + 1}: ${pass.toString()}").lightCyan().underline();
          print(sucesso);
        }
      } else {
        Colorize erro = Colorize('\u{274C} Não há passageiros em espera').red();
        print(erro);
      }
    } else {
      if (passageiro.isNotEmpty) {
        for (var pass in passageiro) {
          int index = passageiro.indexOf(pass);
          Colorize sucesso = Colorize("${index + 1}: $pass").lightCyan().underline();
          print(sucesso);
        }
      } else {
        Colorize erro = Colorize('\u{274C} Lista vazia').red();
        print(erro);
      }
    }
  }

  void mostraListaEspera([outra = false]) {
    if (outra) {
      if (espera.isNotEmpty) {
        for (var pass in espera) {
          int index = espera.indexOf(pass);
          Colorize sucesso = Colorize("${index + 1}: $pass").lightCyan().underline();
          print(sucesso);
        }
      } else {
         Colorize erro = Colorize('\u{274C} Não há passageiros em espera').red();
        print(erro);
      }
    } else {
      if (espera.isNotEmpty) {
        for (var pass in espera) {
          int index = espera.indexOf(pass);
          Colorize sucesso = Colorize("${index + 1}: $pass").lightCyan().underline();
          print(sucesso);
        }
      } else {
       Colorize erro = Colorize('\u{274C} Lista de Espera vazia').red();
       print(erro);
      }
    }
  }

  void pesquisaPassageiro(String cpf) {
    if (passageiro.isNotEmpty) {
      int pesquisado =
          passageiro.indexWhere((Passagem p) => p.passageiro.cpf == cpf);
      if (pesquisado == -1) {
        Colorize erro = Colorize('\u{274C} Passageiro não encontrado').red();
        print(erro);
      } else {
        print(passageiro[pesquisado]);
      }
    } else {
      Colorize erro = Colorize('Lista vazia \u{2B55}').red();
      print(erro);
    }
  }

  void deletaPassageiro(String cpf) {
    int qtdAtual = passageiro.length;
    passageiro.removeWhere((Passagem p) => p.passageiro.cpf == cpf);
    int qtdPos = passageiro.length;
    if (qtdAtual != qtdPos) {
      Colorize success = Colorize('Passageiro removido \u{2705}').green();
      print(success);
      if (espera.isNotEmpty) {
        passageiro.add(espera.first);
        espera.removeAt(0);
      Colorize success = Colorize('Passageiro movido com sucesso \u{2705}').green();
      print(success);
      } else {
      Colorize error = Colorize('Não há passageiros na espera').red();
      print(error);
      }
    } else {
      Colorize error = Colorize('Passageiro não encontrado').red();
      print(error);
    }
  }
}

 enum Destino{
    bhRJ,
    bhBA,
    bhDF
  }