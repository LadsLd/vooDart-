import 'dart:math';
import 'package:aeroporto/passageiro.dart';
import 'package:intl/intl.dart';

class Passagem{
  int numeroP = 0;
  int poltrona = 0;
  String voo = '';
  DateTime hora = DateTime.now();
  Cliente passageiro = Cliente();

  Passagem(this.voo);

  void nmrP(){
  Random npassagem = Random();
  numeroP = npassagem.nextInt(70)+1; 
  }

  void poltronaN(){
  Random ppoltrona = Random();
  poltrona = ppoltrona.nextInt(70)+1; 
  }

  void cadPassageiro(Cliente passageiro){
    this.passageiro = passageiro;
  }
  @override
  String toString() {
    return passageiro.toString() + ' N°Passagem: $numeroP Poltrona: $poltrona Voo: $voo Data e Hora compra: ${DateFormat('dd/MM/yyyy HH:mm').format(hora)}';
  }
}